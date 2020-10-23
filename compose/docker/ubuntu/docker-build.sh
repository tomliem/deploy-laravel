#!/usr/bin/env sh
# -----------------------------------------------------------------------------
#  Docker Build Container
# -----------------------------------------------------------------------------
#  Author     : Dwi Fahni Denni (@zeroc0d3)
#  License    : Apache v2
# -----------------------------------------------------------------------------
set -e

export IMAGE="zeroc0d3/ubuntu"
export TAG="18.04"

echo " Build Image => $IMAGE:$TAG"
docker build . -t $IMAGE:$TAG