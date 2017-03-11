FROM debian:jessie
MAINTAINER Hongbo He <graycarl@qq.com>
ENV TZ=Asia/Shanghai

# Change mirrors, used by local dev
# RUN sed -i 's/httpredir.debian.org/mirrors.ustc.edu.cn/g' /etc/apt/sources.list
RUN apt-get update
RUN apt-get install -y tinyproxy

ADD tinyproxy.conf /etc/tinyproxy.conf

EXPOSE 8888
ENTRYPOINT ["/usr/sbin/tinyproxy", "-d"]
