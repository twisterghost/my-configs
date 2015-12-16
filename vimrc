" Basic setup
set nocompatible                   " Enable compatibility
set backspace=2
set exrc                           " allow for per-directory vimrc files
call pathogen#infect()             " Add packages from the bundle directory
set directory=$HOME/.vim/tmp//,.   " save vim's tempfiles to home directory
let mapleader=","                  " map leader to comma
set backupcopy=yes                 " Fix for watch mode in webpack
"autocmd BufEnter * silent! lcd %:p:h " Set cwd on file change

" Powerline
python from powerline.vim import setup as powerline_setup
python powerline_setup()
python del powerline_setup
set laststatus=2

" Color scheme settings
syntax enable                      "Enable syntax highlighting
colorscheme industry

" UI
set ruler                          " Enable caret position
set number                         " Set line number gutter
set listchars=tab:→\ ,trail:•      " set trailing space and tab charactersi
set list

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

" Wild menu
set wildmode=longest,list,full
set wildmenu
set hidden
nnoremap <CR> :noh<CR><CR>
" never display, e.g., any node_modules directory:
set wildignore+=*/**/node_modules
set wildignore+=*.class
set wildignore+=*/target/*
set wildignore+=*.ico,*.jpg,*.gif,*.png
set wildignore+=coverage*

" CtrlP
let g:ctrlp_match_window = 'order:ttb'

" Quick remaps
map <C-q> :NERDTreeToggle<CR>
map <F2> :NERDTreeToggle<CR>
map <F3> :vertical resize 130<CR>
inoremap jk <esc>
nnoremap <leader>a :Ag
autocmd CompleteDone * pclose " Close peek window after auto complete
