#!/bin/sh

docker stop ${APP_NAME}
docker rm ${APP_NAME}

exit 0
