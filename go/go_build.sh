#!/bin/sh

set -e -x -u

echo $(pwd)

export GOPATH=$PWD
export PATH=$PWD/bin:$PATH

go build src/proxy/main.go


