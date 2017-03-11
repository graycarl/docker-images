FROM hhbcarl/python:2
MAINTAINER Hongbo He "graycarl@qq.com"

RUN pip install shadowsocks

EXPOSE 8388

ENTRYPOINT ["ssserver"]
CMD ["-k", "password"]
