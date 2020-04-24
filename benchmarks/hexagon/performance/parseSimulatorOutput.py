#!/usr/bin/python

import sys
import re

# This script is used as part of the sim-all-benchmarks script.
# To use as standalone script, need to add a caller function.

def parseSimOutput(sim_output_str, benchmark, category):
	if category == "Halide" or category == "Halide Simple":
		record64 = []
		record128 = []

		# Save benchmark name
		record64.append(benchmark)
		record128.append(benchmark)

		# Save simulation architecture
		arch = re.search("hexagon\\-sim INFO\\: The rev\\_id used in the simulation is 0x[a-fA-F0-9]+ \\((.*?)\\)", sim_output_str)
		record64.append(arch.group(1))
		record128.append(arch.group(1))

		# Parse results
		results64 = re.search("AppReported \\((HVX64B)-mode\\)\\: Image [0-9]+x[0-9]+ - "+benchmark+"\\(64B\\): ([0-9]+) cycles \\(([0-9]+.[0-9]+) cycles\\/pixel\\)", sim_output_str)
		results128 = re.search("AppReported \\((HVX128B)-mode\\)\\: Image [0-9]+x[0-9]+ - "+benchmark+"\\(128B\\): ([0-9]+) cycles \\(([0-9]+.[0-9]+) cycles\\/pixel\\)", sim_output_str)

		# Save HVX mode
		record64.append(results64.group(1))
		record128.append(results128.group(1))

		# Save category
		record64.append(category)
		record128.append(category)

		# Save simualted cycle count
		record64.append(results64.group(2))
		record128.append(results128.group(2))

		# Save simualted cycles/pixel
		record64.append(results64.group(3))
		record128.append(results128.group(3))

		print (record64)
		print (record128)

		f.write (",".join(record64)+"\n")
		f.write (",".join(record128)+"\n")
	elif category == "Manual C" or category == "Manual LLVM":
		record = []
		
		# Save benchmark name
		record.append(benchmark)
		
		# Save simulation architecture
		arch = re.search("hexagon\\-sim INFO\\: The rev\\_id used in the simulation is 0x[a-fA-F0-9]+ \\((.*?)\\)", sim_output_str)
		record.append(arch.group(1))
		
		# Parse results
		results = re.search("AppReported \\((HVX64B|HVX128B)-mode\\)\\: Image [0-9]+x[0-9]+ - "+benchmark+": ([0-9]+) cycles \\(([0-9]+.[0-9]+) cycles\\/pixel\\)", sim_output_str)
		
		# Save HVX mode
		record.append(results.group(1))

		# Save category
		record.append(category)

		# Save simualted cycle count
		record.append(results.group(2))

		# Save simualted cycles/pixel
		record.append(results.group(3))

		print (record)
		f.write (",".join(record)+"\n")
	else:
		raise Exception("Unknown input type")

f = open(sys.argv[1],"a")

parseSimOutput(sys.stdin.read(), sys.argv[2], sys.argv[3])