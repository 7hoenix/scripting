#!/bin/bash

#
# Attribution
# Copied from j7hoenix NandToTetris project.
# Will format all Haskell code in the project using the `hindent` formatter.
# Also notice that this script may be executed from anywhere in the project (not just the root).
# Tested on MacOS.
#

set -e
set -u
set -o pipefail

pushd "$(dirname "${0}")/.." > /dev/null
  ROOT="$(pwd)"
popd > /dev/null

_fmt() {
  local file; file="${1}"
  local current; current="$(cat "${file}")"
  local formatted; formatted="$(cat \
      $file \
      | hindent --indent-size 4)"

  if [ "${current}" != "${formatted}" ]; then
    echo "${file}"
    echo "${formatted}" > "${file}"
  fi
}

_main() {
  find \
    -E \
    $ROOT \
    -type f -name "*.hs" \
    ! -path "**/\.stack-work/*" \
    -print0 \
    | while read -d $'\0' file
    do
      _fmt "${file}"
    done
}

_main
