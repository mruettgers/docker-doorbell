#!/bin/sh

set -xe

# Build Raspberry Pi image
docker build -t mruettgers/rpi-doorbell -f targets/rpi/Dockerfile .
