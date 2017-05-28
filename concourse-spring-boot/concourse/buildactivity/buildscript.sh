#!/bin/sh

set -e # fail fast
set -x # print commands
export TERM=${TERM:-dumb}

echo "====Build Started====="
pwd
./hello-springboot-application/concourse-spring-boot/gradlew build
echo "====Build Completed Successfully====="
cd hello-springboot-application
pwd
#all input resources are copied to concourse-spring-boot-output directory within container
cp concourse-spring-boot/build/libs/concourse-spring-boot*.jar ../concourse-spring-boot-output
echo "jar copied success"
cp ./manifest.yml ../concourse-spring-boot-output
echo "=======Copied to Output folder======"