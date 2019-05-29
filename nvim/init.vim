" Basic setup
set nocompatible                   " Enable compatibility
set backspace=2                    " Treat backspace like a sane person
set exrc                           " allow for per-directory vimrc files
set directory=$HOME/.vim/tmp//,.   " save vim's tempfiles to home directory
let mapleader=","                  " map leader to comma
set backupcopy=yes                 " Fix for watch mode in webpack
set noswapfile
let g:vim_markdown_folding_disabled=1

" Use Pathogen for package management
call pathogen#infect()             " Add packages from the bundle directory

set laststatus=2                   " Display the status always

" Package specific configurations

"" Airline
let g:airline_powerline_fonts = 1

"" Wild menu
set wildmode=longest,list,full
set wildmenu
set hidden

"" Buftab Management
nnoremap <CR> :noh<CR><CR>
nnoremap <C-N> :bnext<CR>
nnoremap <C-H> :bprev<CR>
nnoremap <C-X> :bp\|bd #<CR>

" never display, e.g., any node_modules directory:
set wildignore+=*/**/node_modules
set wildignore+=*.class
set wildignore+=*/target/*
set wildignore+=*.ico,*.jpg,*.gif,*.png
set wildignore+=*/**/coverage*
set wildignore+=*/dist/*

"" CtrlP
let g:ctrlp_match_window = 'order:ttb'
let g:ctrlp_max_files = 0

"" Nerdtree
let NERDTreeShowHidden=1

" Color scheme settings
syntax enable                      " Enable syntax highlighting
colorscheme lucius                 " Use Lucius colorscheme
LuciusLight                        " Use LucisLight variant

" UI
set ruler                          " Enable caret position
set number                         " Set line number gutter
set listchars=tab:→\ ,trail:•      " set trailing space and tab charactersi
set list                           " Show whitespace
set rnu                            " Relative line numbers

" File type management
filetype plugin indent on          " Run settings for the given filetype

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

" Quick remaps
map <C-q> :NERDTreeToggle<CR>
map <F2> :NERDTreeToggle<CR>
map <F3> :vertical resize 130<CR>
inoremap jk <esc>
autocmd CompleteDone * pclose " Close peek window after auto complete
nnoremap k gk
nnoremap j gj

" Aliases
cnoreabbrev W w
cnoreabbrev words set wrap linebreak nolist

set timeoutlen=150 ttimeoutlen=0

" tsuquyomi
let g:tsuquyomi_completion_detail = 1    " Show method signatures in omni-completion
autocmd FileType typescript setlocal completeopt+=menu,preview
autocmd FileType typescript nmap <buffer> <Leader>t : <C-u>echo tsuquyomi#hint()<CR>  " Display type info on <leader>t

" Goyo config
nmap <leader>z :Goyo<cr>

