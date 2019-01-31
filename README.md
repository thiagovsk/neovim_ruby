# NVIM Files
Created by Otávio Schwanck.

This Vim files is made to develop in Ruby and NodeJS.

Requires:
- Nvim version 3 or more.
- fzf
- silversearcher
- npm


Steps to install:
1 - Put the files of this repository on your home folder, following the path structure.
2- install silversearcher

On Ubuntu:
sudo apt install silversearch-ag

On Fedora \ arch, install the the_silver_searcher package.

3 - Install fzf:

git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf && ~/.fzf/install

4 - Install Neovim version > 3.
On ubuntu 18.10+, fedora 29 or openSUSE tumbleweed, apt install neovim

In other versions, follow this instructions:
https://github.com/neovim/neovim/wiki/Installing-Neovim

5 - Run: `sudo pip3 install pynvim` 

6 - Open neovim and run :PlugInstall.

7 - Ready to use =D

Before use, study the init.vim, read the Plugins documentation, have fun =D.
