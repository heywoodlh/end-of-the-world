#!/usr/bin/env bash

root_dir=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

target_dir="${root_dir}/docs"

mkdir -p ${root_dir}/docs

## Download wikipedia
curl -L -C - 'https://download.kiwix.org/zim/wikipedia_en_all_nopic.zim' -o ${root_dir}/docs/wikipedia.zim

## Download wikibooks
curl -L -C - 'https://download.kiwix.org/zim/wikibooks_en_all_nopic.zim' -o ${root_dir}/docs/wikibooks.zim

## Download Gutenberg library
curl -L -C - 'http://download.kiwix.org/zim/gutenberg_en_all.zim' -o ${root_dir}/docs/gutenberg.zim

## Download Arch Wiki
curl -L -C - 'https://download.kiwix.org/zim/archlinux_en_all_nopic.zim' -o ${root_dir}/docs/archwiki.zim

## Download iFixit
curl -L -C - 'http://download.kiwix.org/zim/ifixit_en_all.zim' -o ${root_dir}/docs/ifixit.zim

## Download Termux Wiki
curl -L -C - 'https://download.kiwix.org/zim/termux_en_all_maxi.zim' -o ${root_dir}/docs/termux.zim

## Download MDWiki 
curl -L -C - 'https://download.kiwix.org/zim/mdwiki_en_all.zim' -o ${root_dir}/docs/mdwiki.zim

## Download zimgit food-prep
curl -L -C - 'https://download.kiwix.org/zim/zimgit-food-preparation_en.zim' -o ${root_dir}/docs/zimgit-food-prep.zim

## Download zimgit knots
curl -L -C - 'https://download.kiwix.org/zim/zimgit-knots_en.zim' -o ${root_dir}/docs/zimgit-knots.zim

## Download zimgit medicine
curl -L -C - 'https://download.kiwix.org/zim/zimgit-medicine_en.zim' -o ${root_dir}/docs/zimgit-medicine.zim

## Download zimgit post-disaster
curl -L -C - 'https://download.kiwix.org/zim/zimgit-post-disaster_en.zim' -o ${root_dir}/docs/zimgit-post-disaster.zim

## Download zimgit water
curl -L -C - 'https://download.kiwix.org/zim/zimgit-water_en.zim' -o ${root_dir}/docs/zimgit-water.zim
