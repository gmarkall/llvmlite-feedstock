#!/bin/bash

set -x

DARWIN_TARGET=$macos_machine

export PYTHONNOUSERSITE=1

# Enables static linking of stdlibc++
# TODO: This should be fixed
export LLVMLITE_CXX_STATIC_LINK=1

$PYTHON setup.py build --force
$PYTHON setup.py install
