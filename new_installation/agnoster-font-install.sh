#!/bin/bash
if [ ! -e ~/.fonts_installed ]; then
	# clone
	git clone https://github.com/powerline/fonts.git --depth=1
	# install
	cd fonts
	./install.sh
	# clean-up a bit
	cd ..
	rm -rf fonts
	echo 'Fim da instalação'
else
    echo 'Fontes instaladas'
fi

exit 0
