import re
import os
import subprocess

benchmarks = [
	'sobel3x3',
    'dilate3x3',
    'blur3x3',
    'median3x3',
    'gaussian3x3',
    'gaussian5x5',
    'matmul',
    'add',
    'mul',
    'l2norm',
    'average_pool',
    'max_pool',
    'fully_connected',
    'conv_nn'
]

import os, datetime
mydir = os.path.join(os.getcwd(), datetime.datetime.now().strftime('%Y-%m-%d_%H-%M-%S'))
os.makedirs(mydir)
print("Saving output logs in directory: " + mydir + "\n")

## Compile benchmarks using reference Halide
print("=========================================")
print(" Compiling bencharks using Halide 12.0.0 ")
print("=========================================\n")

ref_res = {}
os.environ["HALIDE_DIR"] = "/halide-12.0.0/distrib"

for bm in benchmarks:
	print("Compiling: " + bm)
	fh = open(mydir + "/" + bm + "_ref_log.txt", 'w')
	log = str(subprocess.check_output(['make', bm], stderr=subprocess.STDOUT))
	fh.write(log)
	res = re.search("AppReported \(HVX128B-mode\): Image \d+x\d+ - (.+)\(128B\): (.+) cycles \((.*) cycles/pixel\)", log)
	cycles = int(res[2])
	cyclespp = float(res[3])
	print("Total cycles: {}".format(cycles))
	print("Cycles per pixel: {}\n".format(cyclespp))
	ref_res[bm] = (cycles, cyclespp)


## Compile benchmarks using Halide + Rake
print("=========================================")
print(" Compiling bencharks using Halide + Rake ")
print("=========================================\n")

rake_res = {}
del os.environ["HALIDE_DIR"]

for bm in benchmarks:
	print("Compiling: " + bm)
	fh = open(mydir + "/" + bm + "_log.txt", 'w')
	log = str(subprocess.check_output(['make', bm], stderr=subprocess.STDOUT))
	fh.write(log)
	res = re.search("AppReported \(HVX128B-mode\): Image \d+x\d+ - (.+)\(128B\): (.+) cycles \((.*) cycles/pixel\)", log)
	cycles = int(res[2])
	cyclespp = float(res[3])
	print("Total cycles: {}".format(cycles))
	print("Cycles per pixel: {}\n".format(cyclespp))
	rake_res[bm] = (cycles, cyclespp)

## Compile benchmarks using Halide + Rake
print("=======================")
print(" Generating Output CSV ")
print("=======================\n")

fh = open('results.csv', 'w')
fh.write("Benchmark,Halide Total Cycles,Halide Cycles/Pixel,Rake Total Cycles, Rake Cycles/Pixel, Speedup\n")
for bm in benchmarks:
	fh.write('{},{},{},{},{},{}\n'.format(bm, ref_res[bm][0], ref_res[bm][1], rake_res[bm][0], rake_res[bm][1]), ref_res[bm][1] / rake_res[bm][1])