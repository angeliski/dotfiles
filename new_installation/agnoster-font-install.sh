#!/bin/bash
if [ ! -e ~/.fonts_installed ]; then
	sudo apt-get install fonts-powerline && mkdir -p ~/.fonts_installed
	echo 'Fim da instalação'
else
    echo 'Fontes instaladas'
fi

exit 0