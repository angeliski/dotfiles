#!/bin/bash
if [ ! -e ~/.fonts_installed ]; then
	mkdir -p ~/.fonts_theme

	echo 'Iniciando download do repositório'
	git clone https://github.com/powerline/fonts.git --depth=1 ~/.fonts_theme

	echo 'Instalando fontes'
	~/.fonts_theme/install.sh
	rm -rf ~/.fonts_theme
	mkdir -p ~/.fonts_installed

	echo 'Fim da instalação'
       
else
    echo 'Fontes instaladas'
fi

exit 0