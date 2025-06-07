/*
 * Created by He, Hao at 2019-3-11
 */

#include <cstdarg>
#include <cstdio>
#include <cstdlib>
#include <iostream>
#include <string>
#include <fstream>
#include <sstream>
#include <map>
#include <cmath>
#include <unordered_map>
#include <elfio/elfio.hpp>

#include "BranchPredictor.h"
#include "Cache.h"
#include "Debug.h"
#include "MemoryManager.h"
#include "Simulator.h"

double l2cacheSizePenalty(int cacheSizeBytes);
double l2blockSizePenalty(int blockSizeBytes);
double l2associativityPenalty(int assoc);
double cacheSizePenalty(int cacheSizeBytes);
double blockSizePenalty(int blockSizeBytes);
double associativityPenalty(int assoc);
double BPpenalty(BranchPredictor::Strategy strategy);

bool parseParameters(int argc, char **argv);
void printUsage();
void printElfInfo(ELFIO::elfio *reader);
void loadElfToMemory(ELFIO::elfio *reader, MemoryManager *memory);
std::map<std::string, std::string> readConfig(const std::string &filename, const std::string &section);
BranchPredictor::Strategy parseBPStrategy(const std::map<std::string, std::string>& config, const std::string& bpStr);
BranchPredictor::Strategy parseBPStrategyFromConfig(const std::map<std::string, std::string>& config);

char *elfFile = nullptr;
bool verbose = 0;
bool isSingleStep = 0;
bool dumpHistory = 0;
uint32_t stackBaseAddr = 0x80000000;
uint32_t stackSize = 0x400000;
MemoryManager memory;
//Cache *l1Cache, *l2Cache, *l3Cache;
Cache *l1Cache, *l2Cache;
BranchPredictor::Strategy strategy = BranchPredictor::Strategy::NT;
BranchPredictor branchPredictor;
Simulator simulator(&memory, &branchPredictor);
std::string configSection = "configA";
bool bpOptionFromCmd = false;
std::string bpOptionStr = "";

int main(int argc, char **argv) {
  if (!parseParameters(argc, argv)) {
    printUsage();
    exit(-1);
  }

  // Init cache
  //Cache::Policy l1Policy, l2Policy, l3Policy;
  Cache::Policy l1Policy, l2Policy;

  std::map<std::string, std::string> config = readConfig("configuration.cfg", configSection);

  l1Policy.cacheSize = config.count("l1.cacheSize") ? std::stoi(config["l1.cacheSize"]) : 256;
  l1Policy.blockSize = config.count("l1.blockSize") ? std::stoi(config["l1.blockSize"]) : 32;
  l1Policy.blockNum = l1Policy.cacheSize / l1Policy.blockSize;
  l1Policy.associativity = config.count("l1.associativity") ? std::stoi(config["l1.associativity"]) : 2;
  l1Policy.hitLatency = 1;
  l1Policy.missLatency = 12;

  l2Policy.cacheSize = config.count("l2.cacheSize") ? std::stoi(config["l2.cacheSize"]) : 2048;
  l2Policy.blockSize = config.count("l2.blockSize") ? std::stoi(config["l2.blockSize"]) : 32;
  l2Policy.blockNum = l2Policy.cacheSize / l2Policy.blockSize;
  l2Policy.associativity = config.count("l2.associativity") ? std::stoi(config["l2.associativity"]) : 4;
  l2Policy.hitLatency = 12;
  l2Policy.missLatency = 100;

  l2Cache = new Cache(&memory, l2Policy);
  l1Cache = new Cache(&memory, l1Policy, l2Cache);

  memory.setCache(l1Cache);

  // Read ELF file
  ELFIO::elfio reader;
  if (!reader.load(elfFile)) {
    fprintf(stderr, "Fail to load ELF file %s!\n", elfFile);
    return -1;
  }

  if (verbose) {
    printElfInfo(&reader);
  }

  loadElfToMemory(&reader, &memory);

  if (verbose) {
    memory.printInfo();
  }

  simulator.isSingleStep = isSingleStep;
  simulator.verbose = verbose;
  simulator.shouldDumpHistory = dumpHistory;
  if (bpOptionFromCmd) {
    strategy = parseBPStrategy(config, bpOptionStr);
  } else {
    strategy = parseBPStrategyFromConfig(config);
  }
  simulator.branchPredictor->strategy = strategy;
  simulator.pc = reader.get_entry();
  simulator.initStack(stackBaseAddr, stackSize);
  simulator.GetPenalty(
    cacheSizePenalty(l1Policy.cacheSize), 
    blockSizePenalty(l1Policy.blockSize), 
    associativityPenalty(l1Policy.associativity), 
    l2cacheSizePenalty(l2Policy.cacheSize), 
    l2blockSizePenalty(l2Policy.blockSize), 
    l2associativityPenalty(l2Policy.associativity),
    BPpenalty(strategy));
  simulator.simulate();
  //simulator.memory->printStatistics();
  if (dumpHistory) {
    printf("Dumping history to dump.txt...\n");
    simulator.dumpHistory();
  }


  delete l1Cache;
  delete l2Cache;
  //delete l3Cache;
  return 0;
}

bool parseParameters(int argc, char **argv) {
  // Read Parameters
  for (int i = 1; i < argc; ++i) {
    if (argv[i][0] == '-') {
      switch (argv[i][1]) {
      case 'v':
        verbose = 1;
        break;
      case 's':
        isSingleStep = 1;
        break;
      case 'o':
        dumpHistory = 1;
        break;
      case 'p':
        if (i + 1 < argc) {
          bpOptionFromCmd = true;
          bpOptionStr = argv[i + 1];
          i++;
        } else {
          return false;
        }
        break;
      case 'a':
        configSection = "configA";
        break;
      case 'b':
        configSection = "configB";
        break;
      case 'c':
        configSection = "configC";
        break;
      case 'd':
        configSection = "configD";
        break;
      default:
        return false;
      }
    } else {
      if (elfFile == nullptr) {
        elfFile = argv[i];
      } else {
        return false;
      }
    }
  }
  if (elfFile == nullptr) {
    return false;
  }
  return true;
}

void printUsage() {
  printf("Usage: Simulator riscv-elf-file [-v] [-s] [-o] [-p param] [-a|-b|-c|-d]\n");
  printf("Parameters: \n\t[-v] verbose output \n\t[-s] single step\n");
  printf("\t[-o] dump memory and register trace to dump.txt\n");
  printf("\t[-p param] branch perdiction strategy, accepted param AT, NT, "
         "BTFNT, BPB\n");
  printf("\t[-a|-b|-c|-d] select config section in configuration.cfg\n");
}

void printElfInfo(ELFIO::elfio *reader) {
  printf("==========ELF Information==========\n");

  if (reader->get_class() == ELFCLASS32) {
    printf("Type: ELF32\n");
  } else {
    printf("Type: ELF64\n");
  }

  if (reader->get_encoding() == ELFDATA2LSB) {
    printf("Encoding: Little Endian\n");
  } else {
    printf("Encoding: Large Endian\n");
  }

  if (reader->get_machine() == EM_RISCV) {
    printf("ISA: RISC-V(0x%x)\n", reader->get_machine());
  } else {
    dbgprintf("ISA: Unsupported(0x%x)\n", reader->get_machine());
    exit(-1);
  }

  ELFIO::Elf_Half sec_num = reader->sections.size();
  printf("Number of Sections: %d\n", sec_num);
  printf("ID\tName\t\tAddress\tSize\n");

  for (int i = 0; i < sec_num; ++i) {
    const ELFIO::section *psec = reader->sections[i];

    printf("[%d]\t%-12s\t0x%llx\t%lld\n", i, psec->get_name().c_str(),
           psec->get_address(), psec->get_size());
  }

  ELFIO::Elf_Half seg_num = reader->segments.size();
  printf("Number of Segments: %d\n", seg_num);
  printf("ID\tFlags\tAddress\tFSize\tMSize\n");

  for (int i = 0; i < seg_num; ++i) {
    const ELFIO::segment *pseg = reader->segments[i];

    printf("[%d]\t0x%x\t0x%llx\t%lld\t%lld\n", i, pseg->get_flags(),
           pseg->get_virtual_address(), pseg->get_file_size(),
           pseg->get_memory_size());
  }

  printf("===================================\n");
}

void loadElfToMemory(ELFIO::elfio *reader, MemoryManager *memory) {
  ELFIO::Elf_Half seg_num = reader->segments.size();
  for (int i = 0; i < seg_num; ++i) {
    const ELFIO::segment *pseg = reader->segments[i];

    uint64_t fullmemsz = pseg->get_memory_size();
    uint64_t fulladdr = pseg->get_virtual_address();
    // Our 32bit simulator cannot handle this
    if (fulladdr + fullmemsz > 0xFFFFFFFF) {
      dbgprintf(
          "ELF address space larger than 32bit! Seg %d has max addr of 0x%lx\n",
          i, fulladdr + fullmemsz);
      exit(-1);
    }

    uint32_t filesz = pseg->get_file_size();
    uint32_t memsz = pseg->get_memory_size();
    uint32_t addr = (uint32_t)pseg->get_virtual_address();

    for (uint32_t p = addr; p < addr + memsz; ++p) {
      if (!memory->isPageExist(p)) {
        memory->addPage(p);
      }

      if (p < addr + filesz) {
        memory->setByteNoCache(p, pseg->get_data()[p - addr]);
      } else {
        memory->setByteNoCache(p, 0);
      }
    }
  }
}

BranchPredictor::Strategy parseBPStrategy(const std::map<std::string, std::string>& config, const std::string& bpStr) {
    if (bpStr == "AT") return BranchPredictor::Strategy::AT;
    if (bpStr == "NT") return BranchPredictor::Strategy::NT;
    if (bpStr == "BTFNT") return BranchPredictor::Strategy::BTFNT;
    if (bpStr == "BPB") return BranchPredictor::Strategy::BPB;
    return BranchPredictor::Strategy::NT;
}

BranchPredictor::Strategy parseBPStrategyFromConfig(const std::map<std::string, std::string>& config) {
    auto it = config.find("bp");
    if (it != config.end()) {
        const std::string& bpStr = it->second;
        if (bpStr == "AT") return BranchPredictor::Strategy::AT;
        if (bpStr == "NT") return BranchPredictor::Strategy::NT;
        if (bpStr == "BTFNT") return BranchPredictor::Strategy::BTFNT;
        if (bpStr == "BPB") return BranchPredictor::Strategy::BPB;
    }
    return BranchPredictor::Strategy::NT;
}

std::map<std::string, std::string> readConfig(const std::string &filename, const std::string &section) {
    std::map<std::string, std::string> config;
    std::ifstream infile(filename);
    if (!infile.is_open()) return config;
    std::string line;
    bool inSection = false;
    while (std::getline(infile, line)) {
        if (line == section) {
            inSection = true;
            continue;
        }
        if (inSection) {
            if (line.rfind("config", 0) == 0) break; 
            std::istringstream iss(line);
            std::string key;
            if (std::getline(iss, key, '=')) {
                std::string value_str;
                if (std::getline(iss, value_str)) {
                    config[key] = value_str;
                }
            }
        }
    }
    return config;
}

double cacheSizePenalty(int cacheSizeBytes) {
    const int baseSize = 256;
    if (cacheSizeBytes <= baseSize) return 0;
    double steps = log2(cacheSizeBytes / (double)baseSize);
    return steps * 0.05;
}

double blockSizePenalty(int blockSizeBytes) {
    if (blockSizeBytes <= 16) return 0;
    double steps = blockSizeBytes / 16 - 1;
    return steps * 0.03;
}

double associativityPenalty(int assoc) {
    std::unordered_map<int, double> table = {
        {1, 0},
        {2, 0.02},
        {4, 0.05},
        {8, 0.10},
        {16, 0.20},
        {32, 0.25},
        {64, 0.30},
    };
    if (table.find(assoc) != table.end()) return table[assoc];
    else return 0.6; // fully-associative or higher
}

double l2cacheSizePenalty(int cacheSizeBytes) {
    const int baseSize = 2048;
    if (cacheSizeBytes <= baseSize) return 0;
    double steps = log2(cacheSizeBytes / (double)baseSize);
    return steps * 0.02;
}

double l2blockSizePenalty(int blockSizeBytes) {
    if (blockSizeBytes <= 32) return 0;
    double steps = blockSizeBytes / 16 - 1;
    return steps * 0.008;
}

double l2associativityPenalty(int assoc) {
    std::unordered_map<int, double> table = {
        {1, 0},
        {2, 0.01},
        {4, 0.04},
        {8, 0.08},
        {16, 0.12},
        {32, 0.20},
        {64, 0.25},
    };
    if (table.find(assoc) != table.end()) return table[assoc];
    else return 0.6; 
}

double BPpenalty(BranchPredictor::Strategy strategy) {
    std::unordered_map<BranchPredictor::Strategy, double> table = {
        {BranchPredictor::Strategy::AT, 0},
        {BranchPredictor::Strategy::NT, 0},
        {BranchPredictor::Strategy::BTFNT, 0.04},
        {BranchPredictor::Strategy::BPB, 0.06}
    };
    if (table.find(strategy) != table.end()) 
    {
      return table[strategy];
    }
    else return 0.10;
}