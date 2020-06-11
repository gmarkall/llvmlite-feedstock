#!/bin/bash

set -x

DARWIN_TARGET=$macos_machine

export PYTHONNOUSERSITE=1

export LLVM_CONFIG="${PREFIX}/bin/llvm-config"

LLVM_CONFIG="${LLVM_CONFIG}" $PYTHON setup.py build --force
LLVM_CONFIG="${LLVM_CONFIG}" $PYTHON setup.py install
