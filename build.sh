#!/bin/sh

set -xe

# Build Raspberry Pi image
docker build -t mruettgers/rpi-snapcast targets/rpi/

# Build amd64 image
docker build -t mruettgers/snapcast targets/amd64/
