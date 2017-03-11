FROM ubuntu:trusty
MAINTAINER Hongbo He "graycarl@qq.com"
ENV TZ Asia/Shanghai
# RUN sed -i 's/archive.ubuntu.com/cn.archive.ubuntu.com/g' /etc/apt/sources.list
RUN apt-get update
RUN apt-get install -y language-pack-zh-hans
CMD ["bin/bash"]
