FROM ruby:2
MAINTAINER Hongbo He <graycarl@qq.com>

# Change mirrors, used by local dev
# RUN sed -i 's/httpredir.debian.org/mirrors.ustc.edu.cn/g' /etc/apt/sources.list
# RUN gem sources --add https://ruby.taobao.org/ --remove https://rubygems.org/

RUN apt-get update
RUN apt-get install -y libicu-dev supervisor inotify-tools
RUN gem install --no-document gollum

ENV REPO=git@github.com/somebody/somerepo.git
ENV URLPATH=/
ENV PORT=5000

ADD programs.ini /etc/supervisor/conf.d/programs.conf
ADD dog /opt/dog
ADD entrypoint.sh /opt/entrypoint.sh
ADD ssh-config /root/.ssh/config
ADD gollum.sh /opt/gollum.sh

EXPOSE 5000

WORKDIR /opt
ENTRYPOINT ["/opt/entrypoint.sh"]
