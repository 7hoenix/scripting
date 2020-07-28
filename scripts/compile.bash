#!/bin/bash

#
# Attribution
# Copied from j7hoenix NandToTetris project.
# Will run the compiler and then optionally copy copy over the operating system.
#

set -e
set -u
set -o pipefail

main() {
  local program_under_test; program_under_test=$1;
  local generate_os; generate_os=$2;

  rm -f 11/${program_under_test}/*.vm
  pushd software-suite/compiler
  stack run ../../11/${program_under_test}
  popd
  if ${generate_os}
  then
    cp tools/OS/* 11/${program_under_test}
  fi
}

main $*
