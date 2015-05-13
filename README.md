# docker-servlet-slim - a slim Docker container running a continuous Java servlet server

# DOCKER HUB

https://registry.hub.docker.com/u/mcandre/docker-servlet-slim/

# ABOUT

docker-servlet-slim is a container for hosting Java servlets, made smaller with a few techniques:

* Replace [ubuntu](https://registry.hub.docker.com/_/ubuntu/) with [debian](https://registry.hub.docker.com/_/debian/).
* Replace [Tomcat](http://tomcat.apache.org/) with [Jetty](http://eclipse.org/jetty/).
* Replace [Oracle JDK](http://www.oracle.com/technetwork/java/javase/downloads/jre7-downloads-1880261.html) with [OpenJDK](http://openjdk.java.net/).
* Drop [JDK](http://www.oracle.com/technetwork/java/javase/downloads/jdk7-downloads-1880260.html) for [JRE](http://www.oracle.com/technetwork/java/javase/downloads/jre7-downloads-1880261.html).
* Replace graphical JRE with [headless JRE](http://packages.ubuntu.com/search?keywords=openjdk-7-jre-headless&searchon=names).

# EXAMPLE

```
$ make
docker run -d -p 8080:8080 mcandre/docker-servlet-slim
acc7df450663b74c86d4572150201aa1d233a4e90a067579c1386737c2f8fa52
sleep 2
time curl -s http://$(boot2docker ip):8080 | head
<HTML>
  <HEAD>
    <TITLE>Welcome to Jetty 6 on Debian</TITLE>
    <META http-equiv="Pragma" content="no-cache">
    <META http-equiv="Cache-Control" content="no-cache,no-store">
  </HEAD>
<BODY>
<A HREF="http://jetty.mortbay.org"><IMG SRC="jetty_banner.gif"></A>
<h1>Welcome to Jetty 6 on Debian</h1>


real	0m0.210s
user	0m0.039s
sys	0m0.038s
docker images | grep mcandre/docker-servlet-slim | awk '{ print $(NF-1), $NF }'
266.7 MB
```

# REQUIREMENTS

* [Docker](https://www.docker.com/)

## Optional

* [curl](http://curl.haxx.se/)
* [make](http://www.gnu.org/software/make/)

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
* [Vagrant](https://www.vagrantup.com/)
* [boot2docker](http://boot2docker.io/)

### Mac OS X

* [Xcode](http://itunes.apple.com/us/app/xcode/id497799835?ls=1&mt=12)
* [Homebrew](http://brew.sh/)
* [brew-cask](http://caskroom.io/)

```
$ brew cask install virtualbox vagrant
$ brew install boot2docker curl
```

### Windows

* [Chocolatey](https://chocolatey.org/)

```
> chocolatey install docker curl make
```
