#!/bin/sh

set -e -x -u

echo $(pwd)

export GOPATH=$PWD
export PATH=$PWD/bin:$PATH

go get github.com/onsi/ginkgo/ginkgo
go get github.com/onsi/gomega

cd git/src/proxy/handlers
go test


