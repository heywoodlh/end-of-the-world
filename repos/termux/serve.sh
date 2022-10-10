#!/usr/bin/env bash

root_dir=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

docker run -d --name termux_repo -p 8004:80 -v ${root_dir}/repo:/usr/share/nginx/html:ro nginx:alpine
