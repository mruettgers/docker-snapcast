#!/bin/sh

set -xe

# Build Raspberry Pi image
docker build -t mruettgers/rpi-snapcast rpi/

# Build amd64 image
docker build -t mruettgers/snapcast amd64/
