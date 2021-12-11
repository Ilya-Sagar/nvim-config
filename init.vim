"simple main rules
set mouse=a "enable mouse
set encoding=utf-8
set number
syntax on

"rules for tab
set expandtab
set smarttab
set tabstop=4
set softtabstop=4
set shiftwidth=4

filetype plugin indent on


"shortkeys
"jk as <esc> 
"inoremap jk <esc>
"turn off search highlight
nnoremap ,<space> :nohlsearch<CR>


"require plugins
call plug#begin()
"Plug 'neovim/nvim-lspconfig' "lsp config
"Plug 'hrsh7th/nvim-cmp'
"Plug 'hrsh7th/cmp-nvim-lsp'
"Plug 'saadparwaiz1/cmp_luasnip'
"Plug 'L3MON4D3/LuaSnip'
Plug 'dense-analysis/ale' "linter

Plug 'noahfrederick/vim-laravel'
Plug 'stanangeloff/php.vim'
Plug 'tpope/vim-fugitive' "git support
Plug 'lervag/vimtex'

"autocomplition for php
Plug 'ncm2/ncm2-bufword'
Plug 'ncm2/ncm2-path'
Plug 'ncm2/ncm2'
Plug 'roxma/nvim-yarp'

"vim colors
Plug 'flazz/vim-colorschemes'

"other
Plug 'preservim/NERDTree' "filesystem explower; users can browse complex directory hierarchies; quickly open for reading and writting
"Plug 'SirVer/ultisnips'
"Plug 'honza/vim-snippets'
"Plug 'https://github.com/ap/vim-css-color'
call plug#end()


"colorscheme config
set background=dark
colorscheme OceanicNext
" my faivorite colors chemes: gruvbox, OceanicNext

"stanengeloff/php.vim config
let g:php_version_id=80012
let g:php_syntax_extensions_enabled = ["bcmath", "bz2", "core", "curl", "date", "dom", "ereg", "gd", "gettext", "hash", "iconv", "json", "libxml", "mbstring", "mcrypt", "mhash", "mysql", "mysqli", "openssl", "pcre", "pdo", "pgsql", "phar", "reflection", "session", "simplexml", "soap", "sockets", "spl", "sqlite3", "standard", "tokenizer", "wddx", "xml", "xmlreader", "xmlwriter", "zip", "zlib"]

"autocomplition config
autocmd BufEnter * call ncm2#enable_for_buffer()
set completeopt=noinsert,menuone,noselect

"NERDTree config
let NERDTreeShowHidden=1
"shortkey to open NERDTree
nnoremap <C-n> :NERDTree<CR>
