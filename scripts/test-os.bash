#!/bin/bash

set -u
set -o pipefail

main() {
  local program; program=$1;
  local program_test; program_test=${program}Test

  cp tools/OS/* 12/${program_test}
  cp 12/${program}.jack 12/${program_test}/${program}.jack
  ./tools/JackCompiler.sh 12/${program_test}
  ./tools/VMEmulator.sh "12/${program_test}/${program_test}.tst"
  diff 12/${program_test}/${program_test}.{cmp,out}
}

main $*
