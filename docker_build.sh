#!/bin/bash

base_image=pmallozzi/devenvs:base-gui-gymphysics-310-mujoco_uavs
image_name=${base_image}-mujoco_uavs


echo "Building docker image for amd64 and arm64 architecture"
docker pull ${base_image}
docker buildx build --push --platform linux/amd64,linux/arm64 -f ./Dockerfile -t ${image_name} . --no-cache
