#!/bin/sh

set -e -x -u

echo $(pwd)
echo $(ls)

cd git

export GOPATH=$PWD
export PATH=$PWD/bin:$PATH

go build src/proxy/main.go


