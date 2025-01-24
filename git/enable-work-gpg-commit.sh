#!/bin/bash

# https://cauancabral.net/2021/04/11/git-gpg-assinando-suas-contribuicoes/
# install_git_gpg () {
#     gpg -K --keyid-format SHORT | grep -B 3 rdstation
#     export GPG_KEYID=A3FB950D
#     git config --global --replace user.signingkey "${GPG_KEYID}"
#     git config --global --replace commit.gpgsign true
#     git config --global --replace tag.gpgsign true
# }

# https://blog.1password.com/git-commit-signing/
install_git_gpg () {
 
    git config --global --replace user.signingkey "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAINxsYW0bnrrpDpTB7D0zhHCtGZD06eGppKN2UwoWZKrh"
    git config --global --replace gpg.format ssh
    git config --global --replace gpg.ssh.program "/Applications/1Password.app/Contents/MacOS/op-ssh-sign"
    git config --global --replace commit.gpgsign true
    git config --global --replace tag.gpgsign true
}

git config --list | grep user.signingkey || install_git_gpg
