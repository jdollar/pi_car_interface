FROM debian:stretch

RUN apt-get update -y

RUN apt-get install -y \
            gawk \
            wget \
            git-core \
            diffstat \
            unzip \
            texinfo \
            gcc-multilib \
            build-essential \
            chrpath \
            socat \
            cpio \
            python \
            python3 \
            python3-pip \
            python3-pexpect \
            xz-utils \
            debianutils \
            iputils-ping

# Create layer directory for additional layers to be included
RUN mkdir -p /yocto-layers

COPY layer-setup.sh /yocto-layers
RUN cd /yocto-layers && ./layer-setup.sh && cd /

