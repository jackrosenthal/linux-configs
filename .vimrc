set nu

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

syn on
set t_Co=256
set expandtab
set shiftwidth=4
set softtabstop=4
set browsedir=buffer
set scrolloff=5
set undofile

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

"   Plugin 'altercation/vim-colors-solarized'
colorscheme wombat256

Plugin 'bling/vim-airline'
Bundle 'Floobits/floobits-vim'
Plugin 'sotte/presenting.vim'
Plugin 'vim-scripts/SyntaxRange'

call vundle#end()            " required
filetype plugin indent on    " required 

command! -nargs=0 Sw w !sudo tee % > /dev/null

" git-slides
:nmap <Space> :wa<CR>:call system("git-slides next")<CR>:e!<CR>
:nmap <Backspace> :wa<CR>:call system("git-slides prev")<CR>:e!<CR>
:nmap sl :wa<CR>:call system("git-slides next")<CR>:e!<CR>
:nmap sh :wa<CR>:call system("git-slides prev")<CR>:e!<CR>
:nmap sL :call system("git-slides next -f")<CR>:e!<CR>
:nmap sH :call system("git-slides prev -f")<CR>:e!<CR>
:nmap ss :wa<CR>:call system("git-slides save")<CR>:e!<CR>
:nmap sb :wa<CR>:call system("git-slides insert-before")<CR>:e!<CR>
:nmap sa :wa<CR>:call system("git-slides insert-after")<CR>:e!<CR>
:nmap st :wa<CR>:call system("git-slides transform")<CR>:e!<CR>
:nmap sd :wa<CR>:call system("git-slides delete")<CR>:e!<CR>

autocmd BufNewFile,BufReadPost *.md set filetype=markdown

