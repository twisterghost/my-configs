" Basic setup
set nocompatible                   " Enable compatibility
set backspace=2                    " Treat backspace like a sane person
set exrc                           " allow for per-directory vimrc files
set directory=$HOME/.vim/tmp//,.   " save vim's tempfiles to home directory
let mapleader=","                  " map leader to comma
set backupcopy=yes                 " Fix for watch mode in webpack
set noswapfile
set mouse=a
set laststatus=2                   " Display the status always

"" Plugins
call plug#begin()

Plug 'preservim/nerdtree'
Plug 'ap/vim-buftabline'
Plug 'vim-airline/vim-airline'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'ntpeters/vim-better-whitespace'
Plug 'jremmen/vim-ripgrep'
Plug 'tpope/vim-endwise'
Plug 'pangloss/vim-javascript'    " JavaScript support
Plug 'leafgarland/typescript-vim' " TypeScript syntax
Plug 'maxmellon/vim-jsx-pretty'   " JS and JSX syntax
Plug 'wadackel/vim-dogrun'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'prettier/vim-prettier'

call plug#end()

"" Plugin Configuration
let g:coc_global_extensions = ['coc-tsserver']
let g:prettier#autoformat_require_pragma = 0

colorscheme dogrun

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

"" Nerdtree
let NERDTreeShowHidden=1

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
map <C-f> :NERDTreeToggle<CR>
map <F2> :NERDTreeToggle<CR>
map <F3> :vertical resize 130<CR>
map <C-o> :FZF<CR>
inoremap jk <esc>
autocmd CompleteDone * pclose " Close peek window after auto complete
nnoremap k gk
nnoremap j gj

" Aliases
cnoreabbrev W w
cnoreabbrev words set wrap linebreak nolist

set timeoutlen=150 ttimeoutlen=0

