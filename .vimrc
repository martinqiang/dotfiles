" VIM configuration file
" martin q

call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'olimorris/onedarkpro.nvim'
call plug#end()

" color scheme
colorscheme onedark

" default file encoding
set encoding=utf-8

" syntax highlighting
syntax on

" position in code
set number
set ruler

" line wrap
set wrap

"" indent for code
set smartindent
set autoindent

" highlight search results
set hlsearch
set incsearch

" mouse support
set mouse=a

" Update Time (ms), make fast!
set updatetime=300

" tab columns only 4 characters
set tabstop=4

" tabs are spaces
set expandtab

" status line
set laststatus=2
highlight StatusLine ctermbg=DarkGrey ctermfg=LightBlue
set statusline=%f
set statusline+=%#StatusLine#

highlight LineNr ctermfg=grey

" Map :F to :Files
command F Files

" netrw split open on right side
let g:netrw_altv=1

" Setting enter key for accepting autocomplete
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"

" Special NVIM or VIM commands
if has ('nvim')
	" Neovim
else
	" Vim
endif
