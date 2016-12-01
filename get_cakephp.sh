#!/bin/sh
set -eu
# check https://github.com/cakephp/cakephp/releases
VERSION="2.9.3"

if [ ! -e ${VERSION}.tar.gz ];then
    curl -L -O https://github.com/cakephp/cakephp/archive/${VERSION}.tar.gz
fi
tar xzf ${VERSION}.tar.gz
mv cakephp-${VERSION} cakephp

if [ -e cakephp/.gitkeep ];then
    rm -f cakephp/.gitkeep
    rmdir cakephp
fi

cd cakephp
chmod -R 777 app/tmp
