#!/bin/bash

set -x

DARWIN_TARGET=$macos_machine

export PYTHONNOUSERSITE=1

$PYTHON setup.py build --force
$PYTHON setup.py install
