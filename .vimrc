" VIM configuration file
" martin q

call plug#begin('~/.vim/plugged')
    Plug 'junegunn/fzf'
    Plug 'junegunn/fzf.vim'
    Plug 'olimorris/onedarkpro.nvim'
    Plug 'wfxr/minimap.vim'
    Plug 'preservim/nerdtree'
    Plug 'williamboman/mason.nvim'
    Plug 'williamboman/mason-lspconfig.nvim'
    Plug 'neovim/nvim-lspconfig'
    Plug 'itchyny/lightline.vim'
    Plug 'hrsh7th/cmp-nvim-lsp'
    Plug 'hrsh7th/cmp-buffer'
    Plug 'hrsh7th/cmp-path'
    Plug 'hrsh7th/cmp-cmdline'
    Plug 'hrsh7th/nvim-cmp'
    Plug 'hrsh7th/vim-vsnip'
    "Plug 'nvim-lualine/lualine.nvim'
    "Plug 'nvim-tree/nvim-web-devicons'
call plug#end()

" lightline color scheme
let g:lightline = {
    \ 'colorscheme': 'wombat',    
    \ }

" LUA SCRIPTING

lua << EOF
    require("mason").setup()
    require("mason-lspconfig").setup()

    -- Set up lspconfig.
    local capabilities = require('cmp_nvim_lsp').default_capabilities()

    -- Set up nvim-cmp.
    local cmp = require'cmp'

    cmp.setup({
            snippet = {
            -- REQUIRED - you must specify a snippet engine
          expand = function(args)
            vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
            -- require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
            -- require('snippy').expand_snippet(args.body) -- For `snippy` users.
            -- vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
            -- vim.snippet.expand(args.body) -- For native neovim snippets (Neovim v0.10+)
          end,
        },
        window = {
          -- completion = cmp.config.window.bordered(),
          -- documentation = cmp.config.window.bordered(),
        },
        mapping = cmp.mapping.preset.insert({
          ['<C-b>'] = cmp.mapping.scroll_docs(-4),
          ['<C-f>'] = cmp.mapping.scroll_docs(4),
          ['<C-Space>'] = cmp.mapping.complete(),
          ['<C-e>'] = cmp.mapping.abort(),
          ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
        }),
        sources = cmp.config.sources({
          { name = 'nvim_lsp' },
          { name = 'vsnip' }, -- For vsnip users.
          -- { name = 'luasnip' }, -- For luasnip users.
          -- { name = 'ultisnips' }, -- For ultisnips users.
          -- { name = 'snippy' }, -- For snippy users.
        }, {
          { name = 'buffer' },
        })
    })

    require('lspconfig')['clangd'].setup {
        filetypes = {"c", "cpp", "objc", "objcpp"},
        capabilities = capabilities
}
EOF

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
set shiftwidth=4

" tabs are spaces
set expandtab

" auto tabs
set smarttab

" show location in code
set ruler

" show matching brackets
set showmatch

" status line
set laststatus=2
highlight StatusLine ctermbg=DarkGrey ctermfg=LightBlue
set statusline=%f
set statusline+=%#StatusLine#

highlight LineNr ctermfg=grey

" Map :F to :Files
command F Files

" Map :E to :Explore
command E NERDTree "Explore

" netrw split open on right side
let g:netrw_altv=1

" Vim Minimap
let g:minimap_auto_start=1

" Special NVIM or VIM commands
if has ('nvim')
	" Neovim
else
	" Vim
endif
