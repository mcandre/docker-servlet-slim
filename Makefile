IMAGE=mcandre/docker-servlet-slim

LOCALHOST=$$(docker-machine ip default)

ifneq ($(OS),Windows_NT)
	UNAME=$(shell uname -s)

	ifeq ($(UNAME),Linux)
		LOCALHOST=localhost
	endif
endif

all: run

build: Dockerfile
	docker build -t $(IMAGE) .

run: clean-containers build
	docker run -d -p 8080:8080 $(IMAGE)
	sleep 2
	time curl -s http://$(LOCALHOST):8080 | head
	docker images | grep $(IMAGE) | awk '{ print $$(NF-1), $$NF }'

clean-containers:
	-docker ps -a | grep -v IMAGE | awk '{ print $$1 }' | xargs docker rm -f

clean-images:
	-docker images | grep -v IMAGE | grep $(IMAGE) | awk '{ print $$3 }' | xargs docker rmi -f

clean-layers:
	-docker images | grep -v IMAGE | grep none | awk '{ print $$3 }' | xargs docker rmi -f

clean: clean-containers clean-images clean-layers

publish:
	docker push $(IMAGE)
