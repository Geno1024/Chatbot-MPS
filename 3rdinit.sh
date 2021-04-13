#!/bin/bash

MIRAI_VERSION="2.0.0"

libs=("net.mamoe:mirai-core-all:$MIRAI_VERSION" "net.mamoe:mirai-core:$MIRAI_VERSION" "net.mamoe:mirai-core-api:$MIRAI_VERSION")

mkdir libs
cd libs

for lib in ${libs[*]}; do
    name=${lib%:*}
    groupId=${name/:*}
    artifactId=${name/*:}
    version=${lib/*:}
    echo "Downloading $groupId:$artifactId:$version"
    wget -q "https://jcenter.bintray.com/${groupId//./\/}/$artifactId/$version/$artifactId-$version.pom"
    wget -q "https://jcenter.bintray.com/${groupId//./\/}/$artifactId/$version/$artifactId-$version.jar"
    wget -q "https://jcenter.bintray.com/${groupId//./\/}/$artifactId/$version/$artifactId-$version-sources.jar"
done

cd -

