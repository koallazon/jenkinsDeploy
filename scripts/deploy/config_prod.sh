#!/bin/sh

PROFILE=prod
APP_NAME=jenkins-deploy
BRANCH=main
DOCKER_IMAGE_NAME=ltg2206/jekins-deploy
DOCKER_TAG=${JENKINS_BUILDNO} #injection from jenkins

LOG_DRIVER=awslogs
AWSLOGS_GROUP=/app/docker/to/cloudwatch
AWSLOGS_REGION=ap-northeast-2
AWSLOGS_STREAM=${PROFILE}-${APP_NAME}
AWSLOGS_CREATE_GROUP=true