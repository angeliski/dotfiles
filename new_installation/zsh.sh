#!/bin/bash

if [ ! -e ~/.oh-my-zsh ]
then
sudo apt install zsh -y
sudo usermod -s /usr/bin/zsh $(whoami)
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
else
 echo "Skip zsh install after found .oh-my-zsh"
fi

