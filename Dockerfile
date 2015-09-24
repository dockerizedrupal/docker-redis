FROM dockerizedrupal/base-debian-jessie:1.0.4

MAINTAINER Jürgen Viljaste <j.viljaste@gmail.com>

ENV TERM xterm

ADD ./src /src

RUN /src/entrypoint.sh build

VOLUME ["/redis"]

EXPOSE 6379

ENTRYPOINT ["/src/entrypoint.sh", "run"]
