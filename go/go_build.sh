#!/bin/sh

set -e -x -u

echo $(pwd)
echo $(ls)

export GOPATH=$PWD
export PATH=$PWD/bin:$PATH

go build git/src/proxy/main.go


