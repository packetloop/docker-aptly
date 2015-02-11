# to build
# docker build -t aptly:ubuntu-precise .
# Then run (this will use a /tmp/aptly dir for the data!) to have this interactive:
# mkdir -p /tmp/aptly && docker run -it -v /tmp/:/var/aptly -p 80:80 aptly aptly serve --listen=":80"

FROM ubuntu:precise
MAINTAINER Joseph Herlant <herlantj@gmail.com>

ENV DEBIAN_FRONTEND noninteractive
RUN echo "deb http://repo.aptly.info/ squeeze main" > /etc/apt/sources.list.d/aptly.list
RUN gpg --keyserver keys.gnupg.net --recv-keys E083A3782A194991
RUN gpg -a --export E083A3782A194991 | apt-key add -
RUN apt-get update
RUN apt-get -y install aptly

ADD aptly.conf /etc/aptly.conf
VOLUME ["/var/aptly"]
EXPOSE 80

# The init of the aptly is defined in this script:
COPY ./docker_entrypoint_aptly.sh /
ENTRYPOINT [ "/docker_entrypoint_aptly.sh" ]
RUN chmod u+x /docker_entrypoint_aptly.sh

CMD [ "aptly", "serve", "--listen=\":80\" ]
