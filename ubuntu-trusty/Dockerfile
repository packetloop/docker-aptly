FROM ubuntu
MAINTAINER Joseph Herlant <herlantj@gmail.com>

ENV DEBIAN_FRONTEND noninteractive
RUN echo "deb http://repo.aptly.info/ squeeze main" > /etc/apt/sources.list.d/aptly.list
RUN gpg --keyserver keys.gnupg.net --recv-keys E083A3782A194991
RUN gpg -a --export E083A3782A194991 | sudo apt-key add -
RUN apt-get update
RUN apt-get -y install aptly

ADD aptly.conf /etc/aptly.conf
VOLUME ["/var/aptly"]
