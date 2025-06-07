import subprocess

benchmarks = ['-a', '-b', '-d']

procs = []
for bench in benchmarks:
    proc = subprocess.Popen(['python3', 'run_benchmark.py', bench])
    procs.append(proc)

for proc in procs:
    proc.wait() 