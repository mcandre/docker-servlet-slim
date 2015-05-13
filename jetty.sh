#!/usr/bin/env bash

JETTY_HOME=/usr/share/jetty
LOGDIR=/var/log/jetty

/usr/bin/java -Djetty.home=$JETTY_HOME -Djetty.base=$JETTY_HOME -Djetty.logs=$LOGDIR -jar $JETTY_HOME/start.jar
