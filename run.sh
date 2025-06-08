#!/bin/bash

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

GREEN='\033[0;32m'
BLUE='\033[0;34m'
NC='\033[0m'

echo -e "${GREEN}Running A.riscv with configA...${NC}"
"${SCRIPT_DIR}/Simulator" "${SCRIPT_DIR}/benchmark/A.riscv" -a > "${SCRIPT_DIR}/A_configA.txt"
echo -e "${BLUE}Results saved to A_configA.txt${NC}"

echo -e "${GREEN}Running B.riscv with configB...${NC}"
"${SCRIPT_DIR}/Simulator" "${SCRIPT_DIR}/benchmark/B.riscv" -b > "${SCRIPT_DIR}/B_configB.txt"
echo -e "${BLUE}Results saved to B_configB.txt${NC}"

echo -e "${GREEN}Running C.riscv with configC...${NC}"
"${SCRIPT_DIR}/Simulator" "${SCRIPT_DIR}/benchmark/C.riscv" -c > "${SCRIPT_DIR}/C_configC.txt"
echo -e "${BLUE}Results saved to C_configC.txt${NC}"

echo -e "${GREEN}Running D.riscv with configD...${NC}"
"${SCRIPT_DIR}/Simulator" "${SCRIPT_DIR}/benchmark/D.riscv" -d > "${SCRIPT_DIR}/D_configD.txt"
echo -e "${BLUE}Results saved to D_configD.txt${NC}"

echo -e "${GREEN}All benchmarks completed!${NC}"
echo "Results are saved in ${SCRIPT_DIR} directory."