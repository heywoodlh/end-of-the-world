#!/usr/bin/env bash

root_dir=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

rsync -aHS  --delete --delete-delay --info=progress2 plug-mirror.rcac.purdue.edu::fdroid/repo "${root_dir}"
