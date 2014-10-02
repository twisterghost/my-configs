call pathogen#infect()
" this should be at the beginning of any good vimrc file.
" google it or see here: http://www.linuxfromscratch.org/blfs/view/5.1/postlfs/vimrc.html
set nocompatible
 
set exrc " enable per-directory .vimrc files
 
set number                         " add line numbers
 
set directory=$HOME/.vim/tmp//,.   " save vim's tempfiles to home directory
 
 
filetype plugin indent on          " default to filetype-specific plugins and indentations
set ignorecase                     " ignore case on search
set autoindent                     " add indentation
set listchars=tab:→\ ,trail:•      " set trailing space and tab characters
set list                           " actually show listchars.
 
"  variable formatting stuff
set tabstop=2                      " tab = 2 spaces
set shiftwidth=2                   " treat 2 spaces as a tab
set expandtab                      " convert all tabs to spaces
set showmatch                      " display when a contextualizing symbol has a match
set wildmode=longest,list,full
set wildmenu
set hidden
    
    
" Add LESS filetype recognition
au BufNewFile,BufRead *.less set filetype=less
" Add JSON filetype recognition using JS syntax highlighting
au BufNewFile,BufRead *.json set ft=javascript
" puppet uses Ruby syntax highlighting:
au BufNewFile,BufRead *.pp set filetype=ruby
 
 
set incsearch
set hlsearch
 
" manually change to working directory
map <leader>cd :cd %:p:h<CR>:pwd<CR>
map <C-n> :NERDTreeToggle<CR> 
 
filetype plugin indent on
syntax on
