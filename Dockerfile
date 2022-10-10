FROM heywoodlh/rdp-ubuntu
LABEL MAINTAINER=heywoodlh

RUN apt-get update \
    && DEBIAN_FRONTEND="noninteractive" apt-get install -y --no-install-recommends \
	curl \
	docker.io \
	gedit \
	nano \
	vim 
