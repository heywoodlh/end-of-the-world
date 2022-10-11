#!/usr/bin/env bash

root_dir=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

docker run -d --name=wikipedia -v ${root_dir}/docs:/data -p 8080:80 localhost:5000/kiwix/kiwix-serve /data/\*.zim
