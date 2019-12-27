# docker-snapcast

## Build

`docker buildx build --platform=linux/arm/v7 -t mruettgers/snapcast -f targets/rpi/Dockerfile`

To push to the registry add `--push`.