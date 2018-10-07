#!/usr/bin/env sh

docker run -it --volume=$HOME/repos/picar/yoctoPicarBuild:/yocto:rw --volume=$HOME/repos/picar/meta-picar:/yocto-layers/meta-picar:rw yocto-build

