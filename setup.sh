#! /bin/bash
cp _vimrc ~/.vimrc
mkdir -p ~/.vim/
cp -p -R _vim/** ~/.vim/
sudo apt-get install ack ctags
