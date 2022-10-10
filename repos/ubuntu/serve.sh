#!/usr/bin/env bash

root_dir=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

docker run -d --name ubuntu_apt_repo -p 8001:80 -v ${root_dir}/repo:/usr/share/nginx/html:ro nginx:alpine
