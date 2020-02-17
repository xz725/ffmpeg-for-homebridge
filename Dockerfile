FROM balenalib/raspberry-pi-debian:stretch

RUN  apt-get update && apt-get install -y build-essential curl g++

COPY build-ffmpeg /

RUN /build-ffmpeg --build