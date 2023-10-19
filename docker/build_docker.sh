#!/bin/bash

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

export FORCE_CUDA="1" && DOCKER_BUILDKIT=0 docker build -f $SCRIPT_DIR/../Dockerfile -t maptr:latest $SCRIPT_DIR/..