FROM node:16.13.0

ARG PROFILE=${PROFILE}
ARG APP_NAME=${APP_NAME}

ENV TZ=Asia/Seoul
ENV PROFILE=${PROFILE}
ENV APP_NAME=${APP_NAME}
ENV HOST=0.0.0.0

# 타임존 설정
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

# app 디렉토리 생성
RUN mkdir -p /${APP_NAME}

# /app 디렉토리를 workdir로 설정
WORKDIR /${APP_NAME}

# 현재 Dockerfile에 있는 경로의 모든 파일을 /app에 복사
ADD . /${APP_NAME}

RUN npm install -g npm@8.19.2

# 앱 의존성 설치 및 앱 빌드
RUN npm install \
    && npm run build:${PROFILE}

# app run
ADD scripts/docker/run.sh run.sh
RUN chmod +x run.sh
CMD ["sh", "./run.sh"]