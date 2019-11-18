FROM ubuntu:16.04
LABEL maintainer="MedGhofran loukilmedghofran@outlook.com"
WORKDIR /root

RUN apt update
RUN apt install -y build-essential
RUN apt install -y cmake 
RUN apt install -y libflann-dev libeigen3-dev
RUN apt install -y wget
RUN wget https://github.com/PointCloudLibrary/pcl/archive/pcl-1.9.1.tar.gz
RUN apt install -y libusb-1.0-0-dev libvtk5-dev
RUN apt install -y libboost-all-dev
RUN tar xzvf pcl-1.9.1.tar.gz && cd pcl-pcl-1.9.1 && ls && mkdir build && cd build && cmake .. && make -j2 && make -j2 install 

COPY src/ /app/src/
COPY CMakeLists.txt /app/CMakeLists.txt