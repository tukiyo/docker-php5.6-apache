#!/bin/sh
set -eu
# check https://github.com/cakephp/cakephp/releases
VERSION="2.9.3"

if [ ! -e ${VERSION}.tar.gz ];then
    curl -L -O https://github.com/cakephp/cakephp/archive/${VERSION}.tar.gz
fi
tar xzf ${VERSION}.tar.gz

rm -rdf src

mv cakephp-${VERSION} src

chmod -R 777 src/app/tmp

chmod 777 logs
