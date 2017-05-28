#!/bin/sh

set -e # fail fast
set -x # print commands
export TERM=${TERM:-dumb}

echo "====Build Started====="
./gradlew build
echo "====Build Completed Successfully====="
pwd
#all input resources are copied to concourse-spring-boot-output directory within container
cp ./build/libs/concourse-spring-boot*.jar ../concourse-spring-boot-output
cp ./manifest.yml ../concourse-spring-boot-output
echo "=======Copied to Output folder======"