#!/bin/sh

timestamp=$(date +%Y%m%d-%H%M%S)
filename=${1}-${timestamp}

echo "Backing up ${2}${1} as ${filename} using rclone"

if [[ -n "${2}" ]];
then
        echo "Copying ${2}${1} to ./${1}"
	cp -r ${2}${1} ./${1}
fi

tar cvf ${filename}.tar ${1}
mv ${filename}.tar ./volumes/rclone/drive/

if [[ -n "${2}" ]];
then
        echo "Deleting ./${1}"
	rm -rf ${1}
fi

docker-compose -f docker-compose-upload.yml up
