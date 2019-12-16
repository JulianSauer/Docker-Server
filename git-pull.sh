#!/bin/sh
docker run -ti --rm -v ${HOME}:/root -v $(pwd):/git alpine/git:1.0.7 pull
