#!/bin/bash


text_ubuntu="ssh_users: \"sysadmin simone\"\nssh_template_file: sshd_config_ubuntu.j2"
text_redhat="ssh_users: \"sysadmin simone\"\nssh_template_file: sshd_config_redhat.j2"


let "n = 0"

for file in `ls`; do
	let "n += 1"
	if [ $n -le 2 ]; then
		echo -e $text_redhat >> $file
	else
		echo -e $text_ubuntu >> $file
	fi
done
