FROM nginx:1.23-alpine
LABEL maintainer="Altrium OSS <oss@altrium.io>"

COPY conf/server.conf.template /etc/nginx/conf.d/default.conf
COPY bin/docker-entrypoint.sh /docker-entrypoint.sh