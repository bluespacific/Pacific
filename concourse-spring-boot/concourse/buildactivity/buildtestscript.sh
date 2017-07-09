#!/bin/sh

#set -e # fail fast
#set -x # print commands
#export TERM=${TERM:-dumb}

echo "====Build Started====="
pwd
cd hello-springboot-application
ls -l
cd concourse-spring-boot
./gradlew build test --info
echo "====Test Completed Successfully====="
#cd hello-springboot-application/concourse-spring-boot/build/classes/test/com/application/concourse/concourse
#ls -l
#pwd
echo "=======Exit Test Task======"