#!/bin/sh

set -e # fail fast
set -x # print commands
export TERM=${TERM:-dumb}

echo "====Build Started====="
pwd
./hello-springboot-application/concourse-spring-boot/gradlew build
echo "====Build Completed Successfully====="
pwd
#all input resources are copied to concourse-spring-boot-output directory within container
cp ./hello-springboot-application/concourse-spring-boot/build/libs/concourse-spring-boot*.jar ../concourse-spring-boot-output
cp ./hello-springboot-application/concourse-spring-boot/manifest.yml ../concourse-spring-boot-output
echo "=======Copied to Output folder======"