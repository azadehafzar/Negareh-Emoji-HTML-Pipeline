#!/bin/bash
# Usage: script/ci_test.sh
#
# Runs tests.

# set flag for shell execution.
# -e  Exit immediately if a command exits with a non-zero status.
# -x  Print commands and their arguments as they are executed.
set -e

# files for testing.
NEGAR_PIP_RB="../lib/html/pipeline/negarmoji-pipeline.rb"
FILTER_RB="../lib/html/pipeline/negarmoji-pipeline/filter.rb"
VERSION_RB="../lib/html/pipeline/negarmoji-pipeline/version.rb"

./test_style.sh "${NEGAR_PIP_RB}" "${FILTER_RB}" "${VERSION_RB}"

# TODO write tests first :)
# ./test_module.sh "${NEGAR_PIP_RB}" "${FILTER_RB}" "${VERSION_RB}"
