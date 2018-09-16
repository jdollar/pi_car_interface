# Raspberry Pi Media Center for the car

## Setup Overview

1) Install dietpi on raspberry pi
2) Install pre-reqs on pi
3) Clone this repo on pi and run ansible provision
4) On host machine spin up vagrant
5) SSH into vagrant
6) Pull rootfs off raspberry pi
7) Run through application build process

## Pi Prereqs

This has been tested on a raspberry pi zero W setup with Dietpi. So an installation of dietpi on the raspberry device is expected before starting this setup.

Prior to the ansible provisioning you need to install a few packages by hand:
* ansible
* git
* openssh-client

```
sudo apt-get install ansible git openssh-client
```

## Vagrant

<sup>[1](https://github.com/gael-ian/vagrant-bindfs)</sup>Bindfs
```
vagrant plugin install vagrant-bindfs
```

## Building

### Getting rootfs off raspberry pi for cross compile<sup>[2](https://stackoverflow.com/questions/19162072/how-to-install-the-raspberry-pi-cross-compiler-on-my-linux-host-machine)</sup>

run this in your vagrant
```
rsync -rl --delete-after --safe-links <piUser>@<piIp>:/{lib,usr} $HOME/raspberry-rootfs
```

<sup>[3](https://medium.com/@au42/the-useful-raspberrypi-cross-compile-guide-ea56054de187)</sup>Cross Compiling

```
cd workspace/test
cmake . -DCMAKE_TOOLCHAIN_FILE=toolchain-rpi.cmake
make
```

##### References
1) https://github.com/gael-ian/vagrant-bindfs
2) https://stackoverflow.com/questions/19162072/how-to-install-the-raspberry-pi-cross-compiler-on-my-linux-host-machine
3) https://medium.com/@au42/the-useful-raspberrypi-cross-compile-guide-ea56054de187
