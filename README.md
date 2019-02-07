# NVIM Files
Created by Otávio Schwanck.

This Vim files is made to develop in Ruby and NodeJS.

Requires:
- Nvim version 3 or more.
- fzf
- silversearcher
- npm
- nodejs
- npm
- exuberant-ctags
- tern


Steps to install:
1 - Put the files of this repository on your home folder, following the path structure.

2- install silversearcher:

On Ubuntu:
sudo apt install silversearch-ag exuberant-ctags nodejs npm

On Fedora \ arch, install the the_silver_searcher exuberant-ctags nodejs npm.

3 - Install fzf:

git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf && ~/.fzf/install

4 - Install Neovim version > 3.
On ubuntu 18.10+, fedora 29 or openSUSE tumbleweed, install package: neovim

Example: sudo apt install neovim

In other versions, follow this instructions:
https://github.com/neovim/neovim/wiki/Installing-Neovim

5 - Run: `sudo pip3 install pynvim` 

6 - Run: sudo npm install -g tern

7 - create a .backup dir in your home folder.
`mkdir ~/.backups`

8 - Open neovim and run :PlugInstall.


# Plugins Installed:

- deoplete.vim
- neomake
- vim-gutentags
- vim-rails
- vim-javascript
- deoplete-ternjs
- ultisnips
- vim-buftabline
- dracula
- vim-snippets
- vim-fugitive
- vundle
- tcomment-vim
- vim-ruby
- vim-surround
- auro-pairs
- nerdtree
- vim-gitgutter
- fzf
- vim-multiple-cursors


# Some commands
| Command | Action |
| --- | ---------- |
| ctrl + e | Open Nerdtree |
| ctrl + p | Find files in project |
| , + shift + f | Find text on project. you can select more than one file using tab, and apply commands on all selected files with :cfdo [command_1] | [command_2]
| , + b | List buffers |
| , + p | Previous buffer |
| , + n | Next buffer |
| , + d | Close the buffer |

# Recomended material to study:

- https://github.com/tpope/vim-surround - Super cool when masterized.
- https://github.com/terryma/vim-multiple-cursors - Nice for multiple cursors
- https://github.com/junegunn/fzf.vim - Learning more about fzf

# Troubleshoot

- Cannot open fzf, > /tmp error:  Upgrade your kernel to 4.20+ (Super rare error, probably will not happen).
