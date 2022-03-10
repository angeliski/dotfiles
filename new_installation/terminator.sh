#!/bin/bash

install_terminator () {
	sudo add-apt-repository ppa:gnome-terminator -y
sudo apt-get update -y
sudo apt-get install terminator -y
}

terminator --version || install_terminator
