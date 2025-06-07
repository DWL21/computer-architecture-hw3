import random
import re
import shutil
import subprocess
import time
import argparse
import itertools
import os

L1_SIZES = [256, 512, 1024, 2048, 4096, 8192]
L1_BLOCKS = [4, 8, 16, 32, 64]
L1_ASSOCS = [1, 2, 4, 8]
L2_SIZES = [1024, 2048, 4096, 8192, 16384]
L2_BLOCKS = [8, 16, 32, 64, 128]
L2_ASSOCS = [1, 2, 4, 8]
BPS = ['NT', 'AT', 'BTFNT', 'BPB']

CONFIG_MAP = {
    'a': 'configA',
    'b': 'configB',
    'c': 'configC',
    'd': 'configD',
}

BENCHMARK_MAP = {
    'a': 'A',
    'b': 'B',
    'c': 'C',
    'd': 'D',
}

parser = argparse.ArgumentParser(description='RISCV Simulator Benchmark Batch Runner')
parser.add_argument('-a', action='store_true', help='Run for benchmark A')
parser.add_argument('-b', action='store_true', help='Run for benchmark B')
parser.add_argument('-c', action='store_true', help='Run for benchmark C')
parser.add_argument('-d', action='store_true', help='Run for benchmark D')
parser.add_argument('--max', type=int, default=None, help='Max number of configs to run (for test)')
args = parser.parse_args()

for key in 'abcd':
    if getattr(args, key):
        config_name = CONFIG_MAP[key]
        bench_name = BENCHMARK_MAP[key]
        bench_file = f'./benchmark/{bench_name}.riscv'
        bench_flag = f'-{key}'
        break
else:
    print('Please select one of -a, -b, -c, -d')
    exit(1)

result_dir = f'result/{bench_name}'
os.makedirs(result_dir, exist_ok=True)

all_configs = []
for l1s, l1b, l1a, l2s, l2b, l2a, bp in itertools.product(L1_SIZES, L1_BLOCKS, L1_ASSOCS, L2_SIZES, L2_BLOCKS, L2_ASSOCS, BPS):
    if l1s < l1b * l1a: continue
    if l2s < l2b * l2a: continue
    if l1b > l1s: continue
    if l2b > l2s: continue
    all_configs.append((l1s, l1b, l1a, l2s, l2b, l2a, bp))

print(f'Total valid configs: {len(all_configs)}')
random.shuffle(all_configs)
if args.max:
    all_configs = all_configs[:args.max]
    print(f'Running only first {args.max} configs for test.')

with open('configuration.cfg', 'r') as f:
    orig = f.read()

summary = []

processed = set()
for fname in os.listdir(result_dir):
    if fname.endswith('.txt'):
        processed.add(fname[:-4])

def param_str(l1s, l1b, l1a, l2s, l2b, l2a, bp):
    return f'{bench_name}_l1_{l1s}_l1b_{l1b}_l1a_{l1a}_l2_{l2s}_l2b_{l2b}_l2a_{l2a}_bp_{bp}'

for idx, (l1s, l1b, l1a, l2s, l2b, l2a, bp) in enumerate(all_configs, 1):
    paramname = param_str(l1s, l1b, l1a, l2s, l2b, l2a, bp)
    cfg_out = os.path.join(result_dir, f'{paramname}.cfg')
    out = os.path.join(result_dir, f'{paramname}.txt')
    if paramname in processed:
        print(f'Skipping already processed: {paramname}')
        with open(out) as rf:
            txt = rf.read()
        def extract(pattern, default=None, cast=float):
            m = re.search(pattern, txt)
            if m:
                return cast(m.group(1).replace(',', ''))
            return default
        score = extract(r'Benchmark Score \(bigger is better\): ([0-9.]+)')
        cycles = extract(r'Number of Cycles: ([0-9,]+)', cast=int)
        cpi = extract(r'Avg Cycles per Instrcution: ([0-9.]+)')
        instr = extract(r'Number of Instructions: ([0-9,]+)', cast=int)
        summary.append((score, l1s, l1b, l1a, l2s, l2b, l2a, bp, cycles, cpi, instr, paramname))
        continue
    new = re.sub(r'(' + config_name + r'\n)(.*?)(?=config|$)',
        f'{config_name}\nl1.cacheSize={l1s}\nl1.blockSize={l1b}\nl1.associativity={l1a}\nl2.cacheSize={l2s}\nl2.blockSize={l2b}\nl2.associativity={l2a}\nbp={bp}\n',
        orig, flags=re.DOTALL)
    with open('configuration.cfg', 'w') as f2:
        f2.write(new)
    shutil.copy('configuration.cfg', cfg_out)
    print(f'[{idx}/{len(all_configs)}] {bench_name} Running: L1={l1s}/{l1b}/{l1a}, L2={l2s}/{l2b}/{l2a}, BP={bp}')
    subprocess.run(['./Simulator', bench_file, bench_flag], stdout=open(out, 'w'), stderr=subprocess.STDOUT)
    time.sleep(0.1)

summary.sort(reverse=True, key=lambda x: (x[0] if x[0] is not None else -1))

mdfile = os.path.join('result', f'summary_{bench_name}.md')
with open(mdfile, 'w') as f:
    f.write(f'# {bench_name} 벤치마크 최적화 결과 요약\n\n')
    f.write('| 순위 | 파라미터 | L1 Size | L1 Block | L1 Assoc | L2 Size | L2 Block | L2 Assoc | BP | 점수 | 사이클 | CPI | 명령어 수 |\n')
    f.write('|------|----------|---------|----------|----------|---------|----------|----------|----|------|--------|-----|----------|\n')
    for rank, (score, l1s, l1b, l1a, l2s, l2b, l2a, bp, cycles, cpi, instr, paramname) in enumerate(summary, 1):
        f.write(f'| {rank} | {paramname} | {l1s} | {l1b} | {l1a} | {l2s} | {l2b} | {l2a} | {bp} | {score if score is not None else "-"} | {cycles if cycles is not None else "-"} | {cpi if cpi is not None else "-"} | {instr if instr is not None else "-"} |\n')
print(f'요약 결과가 {mdfile}에 저장되었습니다.')