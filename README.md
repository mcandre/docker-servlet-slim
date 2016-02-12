# docker-servlet-slim - a slim Docker container running a continuous Java servlet server

# DOCKER HUB

https://registry.hub.docker.com/u/mcandre/docker-servlet-slim/

# ABOUT

docker-servlet-slim is a container for hosting Java servlets, made smaller with a few techniques:

* Replace [ubuntu](https://registry.hub.docker.com/_/ubuntu/) with [alpine](https://registry.hub.docker.com/_/alpine/).
* Replace [Tomcat](http://tomcat.apache.org/) with [Jetty](http://eclipse.org/jetty/).
* Replace [Oracle JDK](http://www.oracle.com/technetwork/java/javase/downloads/jre7-downloads-1880261.html) with [OpenJDK](http://openjdk.java.net/).
* Drop [JDK](http://www.oracle.com/technetwork/java/javase/downloads/jdk7-downloads-1880260.html) for [JRE](http://www.oracle.com/technetwork/java/javase/downloads/jre7-downloads-1880261.html).
* Replace graphical JRE with [headless JRE](http://packages.ubuntu.com/search?keywords=openjdk-7-jre-headless&searchon=names).

# EXAMPLE

```
$ make
Successfully built 9e58b4f4b854
docker run -d -p 8080:8080 mcandre/docker-servlet-slim
b00d723845226f67f827956618cac21a33fdbe0f5f91b6ef2df8165a0cfc0a0d
sleep 2
time curl -s http://$(docker-machine ip default):8080 | head
<HTML>
  <HEAD>
    <TITLE>Powered By Jetty</TITLE>
    <META http-equiv="Pragma" content="no-cache">
    <META http-equiv="Cache-Control" content="no-cache,no-store">
  </HEAD>
<BODY>
<A HREF="http://www.eclipse.org/jetty"><IMG SRC="jetty_banner.gif"></A>
<h1>Welcome to Jetty 7 - REMOTE ACCESS!!</h1>
<p>

real	0m0.407s
user	0m0.041s
sys	0m0.045s
docker images | grep mcandre/docker-servlet-slim | awk '{ print $(NF-1), $NF }'
207 MB
```

# REQUIREMENTS

* [Docker](https://www.docker.com/)

## Optional

* [curl](http://curl.haxx.se/)
* [make](http://www.gnu.org/software/make/)
* [Node.js](https://nodejs.org/en/) (for dockerlint)

## Debian/Ubuntu

```
$ sudo apt-get install docker.io curl build-essential
```

## RedHat/Fedora/CentOS

```
$ sudo yum install docker-io curl
```

## non-Linux

* [VirtualBox](https://www.virtualbox.org/)
* [Docker Toolbox](https://www.docker.com/toolbox)

### Mac OS X

* [Xcode](http://itunes.apple.com/us/app/xcode/id497799835?ls=1&mt=12)
* [Homebrew](http://brew.sh/)
* [brew-cask](http://caskroom.io/)

```
$ brew cask install dockertoolbox
```

### Windows

* [Chocolatey](https://chocolatey.org/)

```
> chocolatey install virtualbox make
```

* [DockerToolbox-1.8.2c.exe](https://github.com/docker/toolbox/releases/download/v1.8.2c/DockerToolbox-1.8.2c.exe)
