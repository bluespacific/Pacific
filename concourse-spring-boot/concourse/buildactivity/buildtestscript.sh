#!/bin/sh

set -e # fail fast
set -x # print commands
export TERM=${TERM:-dumb}

echo "====Build Started====="
pwd
ls -l
./hello-springboot-application/concourse-spring-boot/gradlew test
echo "====Test Completed Successfully====="
cd hello-springboot-application/concourse-spring-boot/build/classes/test/com/application/concourse/concourse
ls -l
pwd
echo "=======Exit Test Task======"