#! /bin/bash

#
# Attribution
# Copied from j7hoenix NandToTetris project.
# This is an adhoc integration test suite that run all test programs specified.
# If all test programs are successful then it will also play a cool sound at the end.
# Tested on MacOS.
#

set -e

programs=(
  "FibonacciElement FunctionCalls"
  "StaticsTest FunctionCalls"
)

for program in "${programs[@]}" ; do
  set -- $program

  path=$2/$1

  echo Clearing $1.asm file
  if [ -f programs/$path.asm ]; then
    rm programs/$path.asm
  fi

  echo Translating $1 directory into $1.asm
  stack run programs/$path

  echo Showing $1.asm
  cat programs/$path.asm

  echo Copying $1.asm over
  cp programs/$path.asm ../../08/$path/$1.asm

  echo Running given tst file for $1.asm
  ../../tools/CPUEmulator.sh ../../08/$path/$1.tst
done

echo :tada: Success!
afplay -v 2 /System/Library/PrivateFrameworks/ScreenReader.framework/Versions/A/Resources/Sounds/KBVONotSynched.aiff
