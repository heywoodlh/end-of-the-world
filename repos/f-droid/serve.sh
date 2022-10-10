#!/usr/bin/env bash

root_dir=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

docker run -d --name f_droid_repo -p 8003:80 -v ${root_dir}/repo:/usr/share/nginx/html:ro nginx:alpine
