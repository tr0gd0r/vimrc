execute pathogen#infect()
set number
set mouse=a
set ignorecase
set smartcase
set incsearch
set smartindent
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

filetype plugin indent on

" colorscheme
set t_Co=256
syntax on
colorscheme zenburn

" lightline.vim
set noshowmode
set laststatus=2

" misc mappings
imap jj <Esc>
nnoremap ; <cmd>Telescope find_files<cr>

