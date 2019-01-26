" Install Vim Plug if not installed
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall
endif

call plug#begin()

function! DoRemote(arg)
  UpdateRemotePlugins
endfunction
Plug 'Shougo/deoplete.nvim', { 'do': function('DoRemote') }
Plug 'neomake/neomake', { 'on': 'Neomake' }
Plug 'ludovicchabant/vim-gutentags'

"Javascript Plugins
Plug 'pangloss/vim-javascript'
Plug 'carlitux/deoplete-ternjs'
Plug 'ternjs/tern_for_vim', { 'do': 'sudo npm install && sudo npm install -g tern' }

" Snippets for our use :)
Plug 'SirVer/ultisnips'

" Dracula theme
Plug 'dracula/vim', { 'as': 'dracula' }
" Snippets are separated from the engine. Add this if you want them:
Plug 'honza/vim-snippets'
" Git tools
Plug 'tpope/vim-fugitive'

" Dependency managment
Plug 'gmarik/vundle'

" Commenting and uncommenting stuff
Plug 'tomtom/tcomment_vim'

" Vim Ruby
Plug 'vim-ruby/vim-ruby'

" Surround your code :)
Plug 'tpope/vim-surround'

" Every one should have a pair (Autogenerate pairs for "{[( )
Plug 'jiangmiao/auto-pairs'

" Tab completions
Plug 'ervandew/supertab'

" Navigation tree
Plug 'scrooloose/nerdtree'

" Git Diff
Plug 'airblade/vim-gitgutter'

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all'  }
Plug '~/.fzf'
Plug 'junegunn/fzf.vim'
Plug 'terryma/vim-multiple-cursors'

call plug#end()

let g:deoplete#enable_at_startup = 1
let g:deoplete#enable_ignore_case = 1
let g:deoplete#enable_smart_case = 1
let g:deoplete#enable_camel_case = 1
let g:deoplete#enable_refresh_always = 1
let g:deoplete#max_abbr_width = 0
let g:deoplete#max_menu_width = 0
let g:deoplete#omni#input_patterns = get(g:,'deoplete#omni#input_patterns',{})

let g:tern_request_timeout = 1
let g:tern_request_timeout = 6000
let g:tern#command = ["tern"]
let g:tern#arguments = ["--persistent"]
let g:deoplete#sources#tss#javascript_support = 1
let g:tsuquyomi_javascript_support = 1
let g:tsuquyomi_auto_open = 1
let g:tsuquyomi_disable_quickfix = 1

autocmd! BufWritePost * Neomake
let g:neomake_warning_sign = {
  \ 'text': '?',
  \ 'texthl': 'WarningMsg',
  \ }

let g:neomake_error_sign = {
  \ 'text': 'X',
  \ 'texthl': 'ErrorMsg',
  \ }

" Ident file
map <F7> mzgg=G`z

set tags=./tags; " Set tags directory

set autoindent " Auto indention should be on

" Ruby stuff:
" ================
syntax on                 " Enable syntax highlighting
filetype plugin indent on " Enable filetype-specific indenting and plugins

augroup myfiletypes
	" Clear old autocmds in group
	autocmd!
	" autoindent with two spaces, always expand tabs
	autocmd FileType ruby,eruby,yaml,markdown set ai sw=2 sts=2 et
augroup END

" ================

" Syntax highlighting and theme
syntax enable

" Show trailing whitespace and spaces before a tab:
:highlight ExtraWhitespace ctermbg=red guibg=red
:autocmd Syntax * syn match ExtraWhitespace /\s\+$\| \+\ze\\t/

set ignorecase

" Tab completion
set wildmode=list:longest,list:full
set wildignore+=*.o,*.obj,.git,*.rbc,*.class,.svn,vendor/gems/*

nnoremap <C-e> :NERDTreeToggle<CR>
set clipboard=unnamedplus

" Tavin Personal Configuration "

" Leader with ,
let mapleader=","

" Show number
set number

" show the cursor position.
set ruler

" More itens on history
set ruler

" Show incomplete commands
set showcmd

" Wildmenu for the win
set wildmenu

" Keep 5 lines on z enter.
set scrolloff=5

" High Light search
set hlsearch
set incsearch

" Backup files and backup dir
set backup
set backupdir=~/.backups

" Line Wrap
set lbr

" Follow last identation
set ai
set si "Smart Ident =D

" Remove highlights with leader + enter
nmap <Leader><CR> :nohlsearch<cr>


" Save file with leader w
map <leader>w :w!<CR>
map <leader>W :wall!<CR>

" Close a buffer
map <leader>d :bd<CR>

" Edit multiple buffers
set hidden

nmap <C-p> :FZF<CR>

set ai sw=2 sts=2
color dracula

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
