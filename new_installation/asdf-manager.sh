#!/bin/bash
if [ ! -e ~/.asdf/asdf.sh ]
then
   # install dependencies https://asdf-vm.com/guide/getting-started.html#_1-install-dependencies
   sudo apt install curl git -y
   git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.9.0
fi

. ~/.asdf/asdf.sh

asdf info | grep ruby  || asdf plugin add ruby https://github.com/asdf-vm/asdf-ruby.git
asdf info | grep golang  || asdf plugin-add golang https://github.com/kennyp/asdf-golang.git
asdf info | grep java  || asdf plugin-add java https://github.com/halcyon/asdf-java.git
asdf info | grep nodejs  || asdf plugin add nodejs https://github.com/asdf-vm/asdf-nodejs.git