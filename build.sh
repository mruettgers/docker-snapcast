#!/bin/sh

set -xe

# Build Raspberry Pi image
docker build -t mruettgers/rpi-snapcast -f targets/rpi/Dockerfile .

# Build amd64 image
#docker build -t mruettgers/snapcast -f targets/amd64/Dockerfile .
