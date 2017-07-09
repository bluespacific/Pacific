#!/bin/sh

#set -e # fail fast
#set -x # print commands
#export TERM=${TERM:-dumb}

echo "====Build Started====="

pwd
cd hello-springboot-application
ls -l
cd concourse-spring-boot
#ls -l
#./gradlew build --info
./gradlew build
echo "====Build Completed Successfully====="
#cd hello-springboot-application
ls -l
pwd

echo "In concourse-spring-boot"
ls -l

#pwd
#all input resources are copied to concourse-spring-boot-output directory within container #./concourse-spring-boot-output
cp ./build/libs/concourse-spring-boot*.jar ../../concourse-spring-boot-output
echo "jar copied success"
cp ./manifest.yml ../../concourse-spring-boot-output
echo "=======Copied to Output folder======"