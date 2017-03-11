FROM debian
MAINTAINER Hongbo He <graycarl@qq.com>

# Change mirrors, used by local dev
# RUN sed -i 's/httpredir.debian.org/mirrors.ustc.edu.cn/g' /etc/apt/sources.list

# runit depends on /etc/inittab which is not present in debian:jessie
RUN touch /etc/inittab
RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y runit

COPY runit-starter /usr/sbin/runit-starter
RUN chmod 755 /usr/sbin/runit-starter

CMD ["/usr/sbin/runit-starter"]
