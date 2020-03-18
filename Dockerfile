FROM ubuntu:bionic

# Fix this in the future to use specific versions of musescore
ARG MUSESCORE_VERSION=3.4.2 
ARG DEBIAN_FRONTEND=noninteractive
ENV TZ=America/Los_Angeles

# Install dependencies
RUN apt-get update \
    && apt-get install -y curl unzip software-properties-common \
    xvfb x11vnc x11-xkb-utils xfonts-100dpi xfonts-75dpi \
    xfonts-scalable xfonts-cyrillic x11-apps python3-dev python3-pip \
    && apt-get update \
    && add-apt-repository ppa:mscore-ubuntu/mscore3-stable \
    && apt-get install -y musescore3 