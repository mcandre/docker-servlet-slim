FROM alpine
MAINTAINER Andrew Pennebaker <andrew.pennebaker@gmail.com>

RUN apk add --update openjdk7-jre-base
RUN wget http://download.eclipse.org/jetty/stable-7/dist/jetty-distribution-7.6.17.v20150415.tar.gz
RUN tar xzvf jetty-distribution-7.6.17.v20150415.tar.gz
RUN mkdir -p /usr/share/jetty/
RUN cp -r jetty-distribution-7.6.17.v20150415/* /usr/share/jetty/ && \
		rm -rf jetty-distribution-7.6.17.v20150415*

EXPOSE 8080

ADD jetty.sh /

ENTRYPOINT /jetty.sh
