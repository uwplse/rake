# Ubuntu 20.04 as base OS
FROM ubuntu:20.04
MAINTAINER Maaz Ahmad

# Install Racket
RUN apt-get update
RUN apt install -y software-properties-common
RUN add-apt-repository ppa:plt/racket
RUN apt-get update
RUN apt-get -y install racket

# Install LLVM-12
RUN apt-get install -y wget
RUN wget https://apt.llvm.org/llvm.sh
RUN chmod +x llvm.sh
RUN ./llvm.sh 12

# Build reference Halide (I edited the Makefile to point to llvm-12 correctly)
RUN apt-get install -y make g++-9 zlib1g-dev
RUN cp /usr/bin/g++-9 /usr/bin/g++
COPY halide-12.0.0 /halide-12.0.0
WORKDIR /halide-12.0.0
RUN make

# Build modified Halide with Rake integeration
COPY rake-halide /rake-halide
WORKDIR /rake-halide
RUN make

## IMPORTANT: 
## The next step requires you to have downloaded the "Hexagon SDK v3.5.2 - Linux" 
## from Qualcomm's website: https://developer.qualcomm.com/software/hexagon-dsp-sdk/tools
## Once the download is complete, place the "hexagon_sdk_lnx_3_5_installer_eval_00003_1.zip" file
## inside the root directory of the repo (same directory as this Makefile)

# Install Qualcomm SDK 3.5.2
COPY hexagon_sdk_lnx_3_5_installer_eval_00003_1.zip /hexagon_sdk_lnx_3_5_installer_eval_00003_1.zip
RUN apt-get install -y unzip
WORKDIR /
RUN unzip hexagon_sdk_lnx_3_5_installer_eval_00003_1.zip
RUN rm hexagon_sdk_lnx_3_5_installer_eval_00003_1.zip
RUN tar -xf Hexagon_SDK_LNX_3_5_Installer_Eval_00003_1.tar
RUN rm Hexagon_SDK_LNX_3_5_Installer_Eval_00003_1.tar
RUN chmod +x qualcomm_hexagon_sdk_3_5_2_eval.bin
RUN ./qualcomm_hexagon_sdk_3_5_2_eval.bin -i silent; exit 0

# Install (slightly modified) Rosette 4.0
COPY rosette /rosette
WORKDIR /rosette
RUN raco pkg install --auto

# Install Rake
COPY rake /rake
WORKDIR /rake
RUN raco pkg install --auto

# Get ready to compile benchmarks
RUN apt-get install -y libncurses5 vim
COPY benchmarks /benchmarks
WORKDIR /benchmarks/hexagon/halide
COPY run_all.py /benchmarks/hexagon/halide