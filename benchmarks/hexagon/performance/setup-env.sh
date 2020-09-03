#!/bin/bash
#
# Usage: source setup-env.sh
#
tenv_source="$BASH_SOURCE"
tenv_savedir=`pwd`
tenv_basedir=`dirname "$tenv_source"`
cd "$tenv_basedir"

#############################################################################

export HEXAGON_SDK_REV=${HEXAGON_SDK_REV:-"3.5.1"}
export HL_HEXAGON_TOOLS_REV=${HL_HEXAGON_TOOLS_REV:-"8.3.07"}
export HEXAGON_TOOLS_VER=$HL_HEXAGON_TOOLS_REV

export SDK_ROOT=${SDK_ROOT:-"/home/maaz/Qualcomm"}
export HEXAGON_SDK_ROOT=${HEXAGON_SDK_ROOT:-"$SDK_ROOT/Hexagon_SDK/$HEXAGON_SDK_REV"}
export HL_HEXAGON_TOOLS=${HL_HEXAGON_TOOLS:-"$HEXAGON_SDK_ROOT/tools/HEXAGON_Tools/$HL_HEXAGON_TOOLS_REV/Tools"}
export HALIDE_ROOT=${HALIDE_ROOT:-"/home/maaz/Qualcomm/Hexagon_SDK/3.5.1/tools/HALIDE_Tools/2.2.03/Halide"}
export ANDROID_NDK_HOME=${ANDROID_NDK_HOME:-"$HEXAGON_SDK_ROOT/tools/android-ndk-r19c"}
export ANDROID_ARM64_TOOLCHAIN=${ANDROID_ARM64_TOOLCHAIN:-"$ANDROID_NDK_HOME/toolchains/llvm/prebuilt/linux-x86_64"}

#############################################################################

# Make all paths absolute
export SDK_ROOT=`readlink -m $SDK_ROOT`
export HEXAGON_SDK_ROOT=`readlink -m $HEXAGON_SDK_ROOT`
export HL_HEXAGON_TOOLS=`readlink -m $HL_HEXAGON_TOOLS`
export HALIDE_ROOT=`readlink -m $HALIDE_ROOT`
export ANDROID_NDK_HOME=`readlink -m $ANDROID_NDK_HOME`
export ANDROID_ARM64_TOOLCHAIN=`readlink -m $ANDROID_ARM64_TOOLCHAIN`

export HL_HEXAGON_SIM_REMOTE=${HL_HEXAGON_SIM_REMOTE:-"$HALIDE_ROOT/bin/hexagon_sim_remote"}
export HL_HEXAGON_TOOLS_SIM=${HL_HEXAGON_TOOLS_SIM:-"$HL_HEXAGON_TOOLS"}
#export HL_HEXAGON_SIM_CYCLES=${HL_HEXAGON_SIM_CYCLES:-"1"}
#export ARCHSTRING=${ARCHSTRING:-"--l2cache_perfect 1"}
export CXX=${CXX:-"g++"}

export PATH=$HL_HEXAGON_TOOLS/bin:$PATH

#echo HEXAGON_SDK_REV=$HEXAGON_SDK_REV
#echo HL_HEXAGON_TOOLS_REV=$HL_HEXAGON_TOOLS_REV

#echo SDK_ROOT=$SDK_ROOT
#echo HEXAGON_SDK_ROOT=$HEXAGON_SDK_ROOT
#echo HL_HEXAGON_TOOLS=$HL_HEXAGON_TOOLS
#echo HALIDE_ROOT=$HALIDE_ROOT
#echo ANDROID_NDK_HOME=$ANDROID_NDK_HOME
#echo ANDROID_ARM64_TOOLCHAIN=$ANDROID_ARM64_TOOLCHAIN
#echo HL_HEXAGON_SIM_REMOTE=$HL_HEXAGON_SIM_REMOTE
#echo HL_HEXAGON_TOOLS_SIM=$HL_HEXAGON_TOOLS_SIM
#echo HL_HEXAGON_SIM_CYCLES=$HL_HEXAGON_SIM_CYCLES
#echo ARCHSTRING=$ARCHSTRING
#echo CXX=$CXX

# Report an error if any path doesn't exist
readlink -ve $SDK_ROOT > /dev/null
readlink -ve $HEXAGON_SDK_ROOT > /dev/null
readlink -ve $HL_HEXAGON_TOOLS > /dev/null
readlink -ve $HALIDE_ROOT > /dev/null
readlink -ve $ANDROID_NDK_HOME > /dev/null
readlink -ve $ANDROID_ARM64_TOOLCHAIN > /dev/null
readlink -ve $HL_HEXAGON_SIM_REMOTE > /dev/null
readlink -ve $HL_HEXAGON_TOOLS_SIM > /dev/null

cd "$tenv_savedir"
unset tenv_savedir
unset tenv_basedir
