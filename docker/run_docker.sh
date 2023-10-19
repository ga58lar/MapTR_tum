#!/bin/bash

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

docker run --rm -it \
    --network=host \
    -v /tmp/.X11-unix/:/tmp/.X11-unix/ \
    --privileged \
    -v /dev/shm:/dev/shm \
    --gpus all \
    -e NVIDIA_DRIVER_CAPABILITIES=all \
    --runtime=nvidia \
    maptr:base \
    bash

