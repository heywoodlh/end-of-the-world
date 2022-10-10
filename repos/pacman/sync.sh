#!/usr/bin/env bash

root_dir=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

rsync -rlptH --safe-links --delete-delay --delay-updates --info=progress2 rsync://mirrors.kernel.org/archlinux/ "${root_dir}"/repo/
