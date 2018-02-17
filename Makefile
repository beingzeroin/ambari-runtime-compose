VERSION=dev

build: build-agent build-server

build-server:
	docker build -t ambari-server:$(VERSION) ambari-server

build-agent:
	docker build -t ambari-agent:centos6 ambari-agent/centos/6

.PHONY: build-server build-agent build