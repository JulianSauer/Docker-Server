#!/bin/sh
docker run --rm -it -v /var/run/docker.sock:/var/run/docker.sock -v ${PWD}/Lazydocker/volumes/config:/.config/jesseduffield/lazydocker lazyteam/lazydocker:version-0.6.1
