FROM hhbcarl/ubuntu:trusty
MAINTAINER Hongbo He <graycarl@qq.com>

ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update && apt-get install -yq pptpd iptables

COPY ./etc/pptpd.conf /etc/pptpd.conf
COPY ./etc/ppp/pptpd-options /etc/ppp/pptpd-options

COPY entrypoint.sh /entrypoint.sh
RUN chmod 0700 /entrypoint.sh

EXPOSE 1723

ENTRYPOINT ["/entrypoint.sh"]
CMD ["pptpd", "--fg"]
