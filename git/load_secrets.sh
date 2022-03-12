#!/bin/bash

if [ ! -e ~/workspace/dotfiles-secrets/sync_revelead_files.sh ]
then
    git clone git@github.com:angeliski/dotfiles-secrets.git ~/workspace/dotfiles-secrets
    cd ~/workspace/dotfiles-secrets
    git secret reveal -f
    ./sync_revelead_files.sh
fi