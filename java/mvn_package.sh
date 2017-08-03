#!/bin/sh

set -e -x -u

echo $(pwd)
mvn -s /usr/share/maven/ref/settings-docker.xml -f git/pom.xml -DskipTests=true package

cp git/target/$(file) deploy
