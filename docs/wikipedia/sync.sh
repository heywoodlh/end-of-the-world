#!/usr/bin/env bash

root_dir=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

mkdir ${root_dir}/docs
curl -L 'https://download.kiwix.org/zim/wikipedia_en_all_nopic.zim' -o ${root_dir}/docs/wikipedia.zim
