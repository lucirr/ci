#!/bin/sh

set -e -x -u

echo $(pwd)

cd git

export GOPATH=$PWD
export PATH=$PWD/bin:$PATH

go get github.com/onsi/ginkgo/ginkgo
go get github.com/onsi/gomega

cd src/proxy/handlers
go test


