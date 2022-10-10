#!/usr/bin/env bash

root_dir=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

## Setup Docker registry
"${root_dir}"/registry.sh

## Download and serve wikipedia
"${root_dir}"/docs/wikipedia/sync.sh
"${root_dir}"/docs/wikipedia/serve.sh

## Download and serve pacman repository
"${root_dir}"/docs/pacman/sync.sh 
"${root_dir}"/docs/pacman/serve.sh 

## Download and serve ubuntu repository
"${root_dir}"/docs/ubuntu/sync.sh 
"${root_dir}"/docs/ubuntu/serve.sh 

## Download and serve f-droid repository
"${root_dir}"/docs/f-droid/sync.sh 
"${root_dir}"/docs/f-droid/serve.sh 

## Download and serve termux repository
"${root_dir}"/docs/termux/sync.sh 
"${root_dir}"/docs/termux/serve.sh 
