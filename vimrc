set nocompatible

set exrc " allow for per-directory vimrc files

call pathogen#infect()

python from powerline.vim import setup as powerline_setup
python powerline_setup()
python del powerline_setup
set laststatus=2

syntax enable
set background=dark
colorscheme material-theme

set ruler " Enable caret position
set number " Set line number gutter

set directory=$HOME/.vim/tmp//,.   " save vim's tempfiles to home directory

filetype plugin indent on " Run settings for the given filetype

set ignorecase
set autoindent
set listchars=tab:→\ ,trail:•      " set trailing space and tab charactersi
set list

set tabstop=2                      " tab = 2 spaces
set shiftwidth=2                   " treat 2 spaces as a tab
set expandtab                      " convert all tabs to spaces
set showmatch                      " display when a contextualizing symbol has a match
set wildmode=longest,list,full
set wildmenu
set hidden

set incsearch
set hlsearch
nnoremap <CR> :noh<CR><CR>

" never display, e.g., any node_modules directory:
 set wildignore+=*/**/node_modules
 set wildignore+=*.class
 set wildignore+=*/target/*
 set wildignore+=*.ico,*.jpg,*.gif,*.png

 let g:ctrlp_match_window = 'order:ttb'
 map <C-q> :NERDTreeToggle<CR>
 cnoreabbrev a :NERDTreeToggle
