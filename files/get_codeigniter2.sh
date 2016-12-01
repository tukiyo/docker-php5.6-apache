#!/bin/sh
set -eu
VERSION="2.2.6"

if [ ! -e ${VERSION} ];then
    curl -L -O https://codeload.github.com/bcit-ci/CodeIgniter/zip/${VERSION}
fi
unzip ${VERSION}

if [ -e src/.gitkeep ];then
    rm -f src/.gitkeep
    rmdir src
fi
mv CodeIgniter-${VERSION} src

chmod -R 777 src/application/logs/

chmod 777 logs
