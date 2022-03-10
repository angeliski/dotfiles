#!/bin/bash
install_vscode () {
    sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
    wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
    sudo apt-get update
    sudo apt-get install code
}

code --version || install_vscode
