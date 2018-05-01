FROM ubuntu:16.04

# install tools
RUN apt-get update
RUN apt-get -qq install git
RUN apt-get -qq install libexif-dev
RUN apt-get -qq install liblzma-dev
RUN apt-get -qq install libz-dev
RUN apt-get -qq install libssl-dev
RUN apt-get -qq install libappindicator-dev
RUN apt-get -qq install libicu-dev
RUN apt-get -qq install libdee-dev
RUN apt-get -qq install libdrm-dev
RUN apt-get -qq install dh-autoreconf
RUN apt-get -qq install autoconf
RUN apt-get -qq install automake
RUN apt-get -qq install build-essential
RUN apt-get -qq install libass-dev
RUN apt-get -qq install libfreetype6-dev
RUN apt-get -qq install libgpac-dev
RUN apt-get -qq install libsdl1.2-dev
RUN apt-get -qq install libtheora-dev
RUN apt-get -qq install libtool
RUN apt-get -qq install libva-dev
RUN apt-get -qq install libvdpau-dev
RUN apt-get -qq install libvorbis-dev
RUN apt-get -qq install libxcb1-dev
RUN apt-get -qq install libxcb-image0-dev
RUN apt-get -qq install libxcb-shm0-dev
RUN apt-get -qq install libxcb-xfixes0-dev
RUN apt-get -qq install libxcb-keysyms1-dev
RUN apt-get -qq install libxcb-icccm4-dev
RUN apt-get -qq install libxcb-render-util0-dev
RUN apt-get -qq install libxcb-util0-dev
RUN apt-get -qq install libxrender-dev
RUN apt-get -qq install libasound-dev
RUN apt-get -qq install libpulse-dev
RUN apt-get -qq install libxcb-sync0-dev
RUN apt-get -qq install libxcb-randr0-dev
RUN apt-get -qq install libx11-xcb-dev
RUN apt-get -qq install libffi-dev
RUN apt-get -qq install libncurses5-dev
RUN apt-get -qq install pkg-config
RUN apt-get -qq install texi2html
RUN apt-get -qq install zlib1g-dev
RUN apt-get -qq install yasm
RUN apt-get -qq install xutils-dev
RUN apt-get -qq install bison
RUN apt-get -qq install libunity-dev
RUN apt-get -qq install python-xcbgen

# add experimental repo for gcc-7
RUN echo "deb http://deb.debian.org/debian/ testing non-free contrib main" >> /etc/apt/sources.list

RUN apt-get update

RUN apt-get -t testing -qq install --allow-unauthenticated gcc-7 g++-7 cmake

# COPY ./ /tmp/build
