#!/bin/bash

# Get path to fitter root dir
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
PROJ_ROOT_DIR=$SCRIPT_DIR
echo "Project root directory: $PROJ_ROOT_DIR"

# Init submodules
echo "Initializing submodules..."
git submodule update --init --recursive

# Create AmpGen build dir
AMPGEN_BUILD_DIR="${PROJ_ROOT_DIR}/build_AmpGen/"
mkdir -p $AMPGEN_BUILD_DIR
echo "Created AmpGen build dir: $AMPGEN_BUILD_DIR"

# Build AmpGen
AMP_GEN_SRC_DIR="${PROJ_ROOT_DIR}/AmpGen/"
pixi run cmake -S $AMP_GEN_SRC_DIR -B $AMPGEN_BUILD_DIR
pixi run cmake --build $AMPGEN_BUILD_DIR

echo "Done building AmpGen."