#!/bin/bash
# Clone my preferred vim addons

echo "Creating bundle directory..."
mkdir -p bundle
cd bundle

# Utilities
echo "Cloning utilities..."
git clone -q https://github.com/scrooloose/nerdtree.git
git clone -q https://github.com/ap/vim-buftabline.git
git clone -q https://github.com/rking/ag.vim.git
git clone -q https://github.com/vim-airline/vim-airline.git
git clone -q https://github.com/vim-airline/vim-airline-themes.git
git clone -q https://github.com/kien/ctrlp.vim.git
git clone -q https://github.com/ntpeters/vim-better-whitespace.git

# Languages
echo "Cloning language syntaxes..."
git clone -q https://github.com/pangloss/vim-javascript.git
git clone -q https://github.com/mxw/vim-jsx.git
git clone -q https://github.com/rhysd/vim-crystal.git

# Color schemes
echo "Cloning color schemes..."
git clone -q https://github.com/jonathanfilip/vim-lucius.git

echo "Done."
cd ..
