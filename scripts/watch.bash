#!/usr/bin/env bash

#
# Attribution
# Copied from j7hoenix NandToTetris project.
# This is a hardcoded watch progam that watches for any changes in app or src and then
# Triggers the integration test script.
# Tested on MacOS.
#

ls -d app/* -d src/* | entr -c ./bin/run-integration-tests.bash
