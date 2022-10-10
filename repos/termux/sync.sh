#!/usr/bin/env bash

root_dir=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

RSYNC_PASSWORD=termuxmirror rsync -a --delete rsync@grimler.se::termux ${root_dir}/repo/ 
