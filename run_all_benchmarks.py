import subprocess

benchmarks = ['-a', '-b', '-c', '-d']

procs = []
for bench in benchmarks:
    # 각 벤치마크를 별도 프로세스로 실행
    proc = subprocess.Popen(['python3', 'run_benchmark.py', bench])
    procs.append(proc)

# 모든 프로세스가 끝날 때까지 대기
for proc in procs:
    proc.wait() 