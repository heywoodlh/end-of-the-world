#!/usr/bin/env bash

root_dir=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

mkdir -p ${root_dir}/data

docker ps -a | grep -q docker-registry || docker run -d --name=docker-registry --restart=unless-stopped -p 5000:5000 docker.io/registry

if ping -c 1 docker.com &>/dev/null 
then
	for image in $(cat ${root_dir}/docker-images.txt)
	do
		docker pull docker.io/${image}
		docker tag docker.io/${image} localhost:5000/${image}
		docker push localhost:5000/${image}
	done
fi
