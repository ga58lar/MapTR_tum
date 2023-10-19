FROM maptr:base

# Set environment variables
ENV DEBIAN_FRONTEND noninteractive
ENV NVIDIA_VISIBLE_DEVICES=all
ENV NVIDIA_DRIVER_CAPABILITIES=all
ENV FORCE_CUDA="1"

# Set working directory

# Install debian packages
# RUN apt-get update && \
#     apt-get install -y \
#     ffmpeg \
#     libsm6 \
#     libxext6 \
#     git \
#     ninja-build \
#     libglib2.0-0 \
#     libsm6 \
#     libxrender-dev \
#     libxext6

# Copy MapTR to image
COPY . /dev_ws

WORKDIR /dev_ws/mmdetection3d

RUN python setup.py develop