# for ubuntu

# unstable nvim 
sudo add-apt-repository ppa:neovim-ppa/unstable
sudo apt update

sudo apt install neovim

# setup init.vim to point to vimrc
ln ~/.vimrc ~/.config/nvim/init.vim

# install nodejs for CoC
curl -sL install-node.vercel.app/lts | sudo bash

# Extra setup inside neovim
echo "Run :PlugInstall to download plugin"
echo "Run :F to download FZF executable"

