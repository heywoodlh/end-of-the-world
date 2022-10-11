#!/usr/bin/env bash

root_dir=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

## Setup Docker registry
"${root_dir}"/docker/registry.sh

## Download and serve Kiwix content
"${root_dir}"/docs/kiwix/sync.sh
"${root_dir}"/docs/kiwix/serve.sh

## Download and serve pacman repository
"${root_dir}"/repos/pacman/sync.sh 
"${root_dir}"/repos/pacman/serve.sh 

## Download and serve f-droid repository
"${root_dir}"/repos/f-droid/sync.sh 
"${root_dir}"/repos/f-droid/serve.sh 

## Download and serve termux repository
"${root_dir}"/repos/termux/sync.sh 
"${root_dir}"/repos/termux/serve.sh 
