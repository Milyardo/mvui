#!/bin/bash
base_path="/home/zpowers/workspace/wow-upstream/"
gitlist=(`find $base_path -maxdepth 1 -mindepth 1 -type d`)
for repo in ${gitlist[@]}
do
	git submodule add $repo
done
