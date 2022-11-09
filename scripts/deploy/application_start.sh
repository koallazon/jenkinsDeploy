#!/bin/sh

docker run -d -p 80:3000 \
  --log-driver=${LOG_DRIVER} \
  --log-opt awslogs-group=${AWSLOGS_GROUP} \
  --log-opt awslogs-region=${AWSLOGS_REGION} \
  --log-opt awslogs-stream=${AWSLOGS_STREAM} \
  --log-opt awslogs-create-group=${AWSLOGS_CREATE_GROUP} \
  --name ${APP_NAME} ${DOCKER_IMAGE_NAME}:${DOCKER_TAG}