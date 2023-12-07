# for ubuntu

# unstable nvim 
sudo add-apt-repository ppa:neovim-ppa/unstable
sudo apt update

sudo apt install neovim

# setup init.vim to point to vimrc
ln ~/.vimrc ~/.config/nvim/init.vim

# install nodejs for CoC
curl -sL install-node.vercel.app/lts | sudo bash


echo "Run :PlugInstall in nvim"
