#! /bin/bash

yum install -y wget zsh

chsh

# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# install mongo
wget https://repo.mongodb.org/yum/redhat/7/mongodb-org/3.2/x86_64/RPMS/mongodb-org-shell-3.2.22-1.el7.x86_64.rpm
yum --nogpgcheck localinstall mongodb-org-shell-3.2.22-1.el7.x86_64.rpm

# install nvim
# NOTE: After CentOS 8
#wget -O /home/centos/nvim https://github.com/neovim/neovim/releases/download/v0.6.1/nvim.appimage
#chmod u+x nvim
#cp /home/centos/nvim /usr/bin/

# install Plug
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

# insert config nvim.init
#mkdir -p /home/centos/.config/nvim
#curl -fLo /home/centos/.config/nvim/init.vim https://raw.githubusercontent.com/cactusFriday/init-system/master/init.vim

# someone made bash script to config Vim, so it's a easy way :)
# colorschemes: https://github.com/flazz/vim-colorschemes/tree/master/colors
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ets-labs/python-vimrc/master/setup.sh)"

