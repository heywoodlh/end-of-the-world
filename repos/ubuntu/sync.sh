#!/usr/bin/env bash

root_dir=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
mkdir -p "${root_dir}"/repo

docker run -it --rm "${root_dir}"/repo:/var/spool/apt-mirror heywoodlh/app-mirror
