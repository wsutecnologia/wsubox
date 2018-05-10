#!/bin/bash
if ! ansible --version > /dev/null 2>&1
then
	echo 'deb http://ppa.launchpad.net/ansible/ansible/ubuntu trusty main' > /etc/apt/sources.list.d/ansible.list
	apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 93C4A3FD7BB9C367
	apt-get update
	apt-get install ansible -y --allow-unauthenticated
		
else
	echo "Ansible está instalado ;)"
fi

