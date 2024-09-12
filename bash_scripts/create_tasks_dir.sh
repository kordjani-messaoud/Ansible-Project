#!/bin/bash


for dir in /home/sysadmin/Ansible-Project/roles/*/; do
	if [ -d $dir ]; then
		mkdir -p "$dir/tasks/"
		echo "'tasks' directory created inside $pwd/roles/$dir"
	fi
done
