import os
import re
import argparse

BENCHMARK_MAP = {
    'a': 'A',
    'b': 'B',
    'c': 'C',
    'd': 'D',
}

def extract(pattern, txt, default=None, cast=float):
    m = re.search(pattern, txt)
    if m:
        return cast(m.group(1).replace(',', ''))
    return default

def main():
    parser = argparse.ArgumentParser(description='Make summary markdown from result txt files')
    parser.add_argument('-b', '--bench', required=True, choices=['A','B','C','D','a','b','c','d'], help='Benchmark name (A/B/C/D)')
    args = parser.parse_args()
    bench_name = args.bench.upper()
    result_dir = f'result/{bench_name}'
    if not os.path.isdir(result_dir):
        print(f'No such result directory: {result_dir}')
        return
    summary = []
    for fname in os.listdir(result_dir):
        if fname.endswith('.txt'):
            paramname = fname[:-4]
            with open(os.path.join(result_dir, fname)) as rf:
                txt = rf.read()
            score = extract(r'Benchmark Score \(bigger is better\): ([0-9.]+)', txt)
            cycles = extract(r'Number of Cycles: ([0-9,]+)', txt, cast=int)
            cpi = extract(r'Avg Cycles per Instrcution: ([0-9.]+)', txt)
            # 파라미터 파싱
            m = re.match(rf'{bench_name}_l1_(\d+)_l1b_(\d+)_l1a_(\d+)_l2_(\d+)_l2b_(\d+)_l2a_(\d+)_bp_(\w+)', paramname)
            if m:
                l1s, l1b, l1a, l2s, l2b, l2a, bp = m.groups()
                summary.append((score, int(l1s), int(l1b), int(l1a), int(l2s), int(l2b), int(l2a), bp, cycles, cpi))
    summary.sort(reverse=True, key=lambda x: (x[0] if x[0] is not None else -1))
    mdfile = os.path.join('result', f'summary_{bench_name}.md')
    with open(mdfile, 'w') as f:
        f.write(f'# {bench_name} 벤치마크 최적화 결과 요약\n\n')
        f.write('| 순위 | L1 Size | L1 Block | L1 Assoc | L2 Size | L2 Block | L2 Assoc |   BP   |   점수   |    사이클    |   CPI   |\n')
        f.write('|:----:|:-------:|:--------:|:--------:|:-------:|:--------:|:--------:|:------:|:--------:|:------------:|:-------:|\n')
        for rank, (score, l1s, l1b, l1a, l2s, l2b, l2a, bp, cycles, cpi) in enumerate(summary, 1):
            score_str = f"{score:.3f}" if score is not None else "-"
            cycles_str = f"{cycles:,}" if cycles is not None else "-"
            cpi_str = f"{cpi:.3f}" if cpi is not None else "-"
            f.write(f'|  {rank:2d}  |  {l1s:5d}  |   {l1b:4d}   |    {l1a:2d}    |  {l2s:5d}  |   {l2b:4d}   |    {l2a:2d}    | {bp:6s} | {score_str:8s} | {cycles_str:>12s} | {cpi_str:7s} |\n')
    print(f'Summary saved to {mdfile}')

if __name__ == '__main__':
    main()
