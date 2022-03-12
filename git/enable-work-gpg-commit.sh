#!/bin/bash

# https://cauancabral.net/2021/04/11/git-gpg-assinando-suas-contribuicoes/
install_git_gpg () {
    gpg -K --keyid-format SHORT | grep -B 3 rdstation
    export GPG_KEYID=A3FB950D
    git config --global --replace user.signingkey "${GPG_KEYID}"
    git config --global --replace commit.gpgsign true
    git config --global --replace tag.gpgsign true
}

git config --list | grep user.signingkey || install_git_gpg
