#!/bin/bash

# 모든 파이썬 프로세스 종료
echo "Killing all running Python scripts..."
pkill -f .py

# nohup으로 run_all_benchmarks.py 실행
echo "Starting run_all_benchmarks.py with nohup..."
nohup python3 -u run_all_benchmarks.py > nohup.output 2>&1 &
echo "Started. Output is being written to nohup.output." 