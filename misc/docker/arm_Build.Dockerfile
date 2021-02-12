FROM raspbian/stretch
LABEL version="1.0"
LABEL maintainer="mail@etlegacy.com"
LABEL description="RPI build machine for the armv7l"


#Run the update to get latest thing and install req deps
RUN apt update && apt -y install build-essential libfreeimage-dev libopenal-dev libpango1.0-dev libsndfile-dev libudev-dev \
                libasound2-dev libjpeg62-turbo-dev libwebp-dev automake libgl1-mesa-glx libogg0 libopenal1 libvorbis0a \
                libvorbisfile3 zlib1g libx11-dev libglew-dev libegl1-mesa-dev libraspberrypi0 libraspberrypi-bin libraspberrypi-dev \
                nasm autoconf git zip gcc g++ libtool libxrandr-dev x11proto-randr-dev libssl-dev
				

#Get Cmake verion 3.10.3 atleast or newest one
RUN wget https://github.com/Kitware/CMake/releases/download/v3.19.2/cmake-3.19.2.tar.gz && tar -xzf cmake-3.19.2.tar.gz && cd ./cmake* && ./configure && make install