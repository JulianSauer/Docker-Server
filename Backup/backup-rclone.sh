#!/bin/sh

timestamp=$(date +%Y%m%d-%H%M%S)
filename=${1}-${timestamp}

echo "Backing up ${1} as ${filename} using rclone"
tar cvf ${filename}.tar ${1}
mv ${filename}.tar ./volumes/rclone/drive/

docker-compose up
