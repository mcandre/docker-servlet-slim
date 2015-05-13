FROM debian:wheezy
MAINTAINER Andrew Pennebaker <andrew.pennebaker@gmail.com>

RUN apt-get update
RUN apt-get install -y openjdk-7-jre-headless jetty

EXPOSE 8080

ADD jetty.sh /

ENTRYPOINT /jetty.sh
