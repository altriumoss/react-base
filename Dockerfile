FROM nginx:1.23-alpine
LABEL maintainer="Altrium OSS <oss@altrium.io>"

# Fixes vulnerabilities found in specific tooling versions (based on Harbor scan)
RUN apk add --upgrade curl=7.83.1-r3 libxml2=2.9.14-r1 

COPY conf/server.conf.template /etc/nginx/conf.d/default.conf
COPY bin/docker-entrypoint.sh /docker-entrypoint.sh