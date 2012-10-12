#!/bin/bash
base_path="/home/zpowers/workspace/wow-upstream/"
mvui_home=`pwd`
gitlist=(`find $base_path -maxdepth 1 -mindepth 1 -type d`)
for repo in ${gitlist[@]}
do
	cd $repo
	echo "cd $repo"
	git svn rebase
	cd $base_path
done
echo "cd $mvui_home"
echo "Updating Local git repos"
cd $mvui_home
git submodule foreach git pull origin master
