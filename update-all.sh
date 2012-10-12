#!/bin/bash
base_path="/home/zpowers/workspace/wow-upstream/"
<<<<<<< HEAD
mvui_home=`pwd`
=======
>>>>>>> 114d9cdb1cfca9d0356fa34b3352191d5ac6625e
gitlist=(`find $base_path -maxdepth 1 -mindepth 1 -type d`)
for repo in ${gitlist[@]}
do
	cd $repo
	echo "cd $repo"
	git svn rebase
	cd $base_path
done
<<<<<<< HEAD
echo "cd $mvui_home"
echo "Updating Local git repos"
cd $mvui_home
git submodule foreach git pull origin master
=======
>>>>>>> 114d9cdb1cfca9d0356fa34b3352191d5ac6625e
