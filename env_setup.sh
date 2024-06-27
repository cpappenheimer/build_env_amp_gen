#!/bin/bash

# Get path to project root dir
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
export PROJ_ROOT_DIR=$SCRIPT_DIR
echo "Set PROJ_ROOT_DIR = $PROJ_ROOT_DIR"

export AMPGENROOT="${PROJ_ROOT_DIR}/AmpGen"
echo "Set AMPGENROOT = $AMPGENROOT"