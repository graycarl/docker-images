FROM hhbcarl/runit
MAINTAINER Hongbo He <graycarl@qq.com>

# Change mirrors, used by local dev
RUN sed -i 's/httpredir.debian.org/mirrors.ustc.edu.cn/g' /etc/apt/sources.list

RUN apt-get update
RUN apt-get install -y tinyproxy stunnel4

ADD tinyproxy.conf /etc/tinyproxy.conf
ADD tunnel.conf /etc/stunnel/tunnel.conf

ADD stunnel-boot.sh /etc/service/stunnel/run
ADD tinyproxy-boot.sh /etc/service/tinyproxy/run

EXPOSE 5000
# ENTRYPOINT ["/usr/sbin/runit-starter"]
