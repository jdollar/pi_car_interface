# Raspberry Pi Media Center for the car

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

<sup>[2](https://medium.com/@au42/the-useful-raspberrypi-cross-compile-guide-ea56054de187)</sup>Cross Compiling

```
cd workspace/test
cmake . -DCMAKE_TOOLCHAIN_FILE=toolchain-rpi.cmake
make
```

##### References
1) https://github.com/gael-ian/vagrant-bindfs
2) https://medium.com/@au42/the-useful-raspberrypi-cross-compile-guide-ea56054de187
