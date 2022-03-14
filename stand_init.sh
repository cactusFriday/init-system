#! /bin/bash

yum install -y wget zsh

# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# install mongo
wget https://repo.mongodb.org/yum/redhat/7/mongodb-org/3.2/x86_64/RPMS/mongodb-org-shell-3.2.22-1.el7.x86_64.rpm
yum --nogpgcheck localinstall mongodb-org-shell-3.2.22-1.el7.x86_64.rpm
