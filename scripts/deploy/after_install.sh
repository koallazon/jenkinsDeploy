#!/bin/bash

echo "💖 after_install 💖"

# 환경파일 로드
source /home/ec2-user/target/deploy/config.sh

docker pull ${DOCKER_IMAGE_NAME}:${DOCKER_TAG}