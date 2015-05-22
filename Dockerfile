FROM alpine
MAINTAINER Andrew Pennebaker <andrew.pennebaker@gmail.com>
ADD jetty.sh /
RUN apk add --update openjdk7-jre-base && \
    wget http://download.eclipse.org/jetty/stable-7/dist/jetty-distribution-7.6.17.v20150415.tar.gz && \
    tar xzvf jetty-distribution-7.6.17.v20150415.tar.gz && \
    mkdir -p /usr/share/jetty/ && \
    cp -r jetty-distribution-7.6.17.v20150415/* /usr/share/jetty/ && \
		rm -rf jetty-distribution-7.6.17.v20150415*
EXPOSE 8080
ENTRYPOINT /jetty.sh
