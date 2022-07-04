#!/bin/bash

# required packages
sudo apt install -y git tig curl wget vim zsh make openvpn htop

# python dev packages
sudo apt install -y python3-pip build-essential zlib1g-dev libncurses5-dev libgdbm-dev libnss3-dev libssl-dev libreadline-dev libffi-dev


# setup awesome wm 18.04ubuntu
sudo apt-get install -y gnome gnome-flashback gnome-icon-theme gnome-themes-extra awesome

git clone https://github.com/SirJson/awesomewm-gnome.git
# make install in directory

