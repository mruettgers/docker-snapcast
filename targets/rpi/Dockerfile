FROM arm32v7/alpine:3
MAINTAINER Michael Ruettgers <michael@ruettgers.eu>

ENV BUILD_PACKAGES \
  git \
  bash \
  build-base \
  asio-dev \
  avahi-dev \
  flac-dev \
  libvorbis-dev \
  alsa-lib-dev

ENV PACKAGES \
  avahi-libs \
  flac \
  libvorbis \
  alsa-lib \
  alsa-utils \
  alsa-plugins-pulse

RUN set -xe && \
  cd /tmp && \
  apk --no-cache add ${BUILD_PACKAGES} ${PACKAGES} && \
  git clone --recursive https://github.com/badaix/snapcast.git && \
  cd snapcast && \
  make && \
  cp server/snapserver client/snapclient /usr/local/bin && \
  cd .. && rm -rf snapcast && apk --no-cache --purge del ${BUILD_PACKAGES}
