#!/bin/bash
if [ ! -e ~/.asdf/asdf.sh ]
then
   # install dependencies https://asdf-vm.com/guide/getting-started.html#_1-install-dependencies
  brew install asdf
fi

. ~/.asdf/asdf.sh

asdf info | grep ruby  || asdf plugin add ruby https://github.com/asdf-vm/asdf-ruby.git 
asdf info | grep golang  || asdf plugin add golang https://github.com/kennyp/asdf-golang.git && asdf install golang latest && asdf set golang latest -u
asdf info | grep java  || asdf plugin add java https://github.com/halcyon/asdf-java.git 
asdf info | grep nodejs  || asdf plugin add nodejs https://github.com/asdf-vm/asdf-nodejs.git && asdf install nodejs latest && asdf set nodejs latest -u