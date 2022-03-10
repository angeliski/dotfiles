#!/bin/bash

# install dependencies https://asdf-vm.com/guide/getting-started.html#_1-install-dependencies
apt install curl git

git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.9.0


asdf plugin add ruby https://github.com/asdf-vm/asdf-ruby.git
asdf plugin-add golang https://github.com/kennyp/asdf-golang.git
diff --git a/new_installation/zsh.sh b/new_installation/zsh.sh
