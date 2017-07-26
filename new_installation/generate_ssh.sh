#!/bin/bash
if [ ! -e ~/.ssh/id_rsa ]
then
	ssh-keygen -t rsa -b 4096 -C "angeliski@hotmail.com"

	eval "$(ssh-agent -s)"
else
	echo "Arquivo já existe."
fi

ssh-add -K ~/.ssh/id_rsa
cat ~/.ssh/id_rsa.pub | pbcopy