build dockerfile use tag yocto-build

run docker run command with volume specified at yocto

it into docker container and go to yocto folder

TODO: figure out some way to enable utf8 locales and export bitbake to path

clone poky. Layers already get cloned with layers-setup script
set bitbake bin on path
run poky oe-init-build-env inside poky dir. Generate rpi-build

remove inherits from meta/conf/sanity.conf to enabled building as root for docker
TODO: See details on WARNINGS that show up. Host contamination run as same user as setuid

