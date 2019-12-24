#!/bin/sh

set -xe

# Build Raspberry Pi image
docker buildx build --platform=linux/arm/v7 -t mruettgers/doorbell -f targets/rpi/Dockerfile .
#docker build -t mruettgers/rpi-doorbell -f targets/rpi/Dockerfile .
