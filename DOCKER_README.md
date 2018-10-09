Generate config.env file from config.env template

run make build to generate new image to use for building yocto

run make connect to run a docker image with needed volumes detailed by config.env file
once connected to docker container go to the yocto folder. Where we will generate the yocto build

clone poky. Layers already get cloned with layers-setup script
run poky oe-init-build-env inside poky dir. Generate rpi-build

remove inherits from meta/conf/sanity.conf to enabled building as root for docker
TODO: See details on WARNINGS that show up. Host contamination run as same user as setuid

use rpiconfig-picar to generate files. Have to manually copy over using host volume at the moment
