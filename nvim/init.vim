" Basic setup
set nocompatible                   " Enable compatibility
set backspace=2
set exrc                           " allow for per-directory vimrc files
call pathogen#infect()             " Add packages from the bundle directory
set directory=$HOME/.vim/tmp//,.   " save vim's tempfiles to home directory
let mapleader=","                  " map leader to comma
set backupcopy=yes                 " Fix for watch mode in webpack
set noswapfile
"autocmd BufEnter * silent! lcd %:p:h " Set cwd on file change

set laststatus=2
let g:airline_powerline_fonts = 1
" Color scheme settings
syntax enable                      "Enable syntax highlighting
colorscheme lucius
LuciusLight

" UI
set ruler                          " Enable caret position
set number                         " Set line number gutter
set listchars=tab:→\ ,trail:•      " set trailing space and tab charactersi
set list
set rnu

" File type management
filetype plugin indent on          " Run settings for the given filetype
let g:vim_markdown_folding_disabled=1

" Searching
set ignorecase
set autoindent
set incsearch
set hlsearch

" Editing
set tabstop=2                      " tab = 2 spaces
set shiftwidth=2                   " treat 2 spaces as a tab
set expandtab                      " convert all tabs to spaces
set showmatch                      " display when a contextualizing symbol has a match
set smartindent

" Wild menu
set wildmode=longest,list,full
set wildmenu
set hidden
nnoremap <CR> :noh<CR><CR>
nnoremap <C-N> :bnext<CR>
nnoremap <C-H> :bprev<CR>
nnoremap <C-X> :bdelete<CR>
" never display, e.g., any node_modules directory:
set wildignore+=*/**/node_modules
set wildignore+=*.class
set wildignore+=*/target/*
set wildignore+=*.ico,*.jpg,*.gif,*.png
set wildignore+=*/**/coverage*
set wildignore+=*/dist/*

" CtrlP
let g:ctrlp_match_window = 'order:ttb'
let g:ctrlp_max_files = 0

" Nerdtree
let NERDTreeShowHidden=1

" Quick remaps
map <C-q> :NERDTreeToggle<CR>
map <F2> :NERDTreeToggle<CR>
map <F3> :vertical resize 130<CR>
inoremap jk <esc>
nnoremap <leader>a :Ag
autocmd CompleteDone * pclose " Close peek window after auto complete
let test#javascript#mocha#options = '--compilers js:babel-register --require /Users/michael/src/tower/core/test/testEnv.js'
set timeoutlen=1000 ttimeoutlen=0
