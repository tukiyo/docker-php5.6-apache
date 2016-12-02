#!/bin/sh
set -eu
# see https://github.com/bcit-ci/CodeIgniter/releases
#VERSION="2.2.6"
VERSION="3.1.2"

if [ ! -e ${VERSION} ];then
    curl -L -O https://codeload.github.com/bcit-ci/CodeIgniter/zip/${VERSION}
fi
unzip ${VERSION}

if [ -e src/.gitkeep ];then
    mv src src.bak
    ln -s CodeIgniter-${VERSION} src
fi

chmod -R 777 src/application/logs/

chmod 777 logs
