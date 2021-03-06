set nocompatible
set number
set scrolloff=3
set numberwidth=4
highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NONE

set expandtab
set tabstop=2
set shiftwidth=2
set autoindent
set smartindent
set ic
set hls

call plug#begin('~/.vim/plugged')
Plug 'othree/csscomplete.vim'
Plug 'hail2u/vim-css3-syntax'
Plug 'elzr/vim-json'
Plug 'pangloss/vim-javascript'
Plug 'cakebaker/scss-syntax.vim'
Plug 'gko/vim-coloresque'
Plug 'shmargum/vim-sass-colors'
Plug 'miripiruni/vim-better-css-indent'
Plug 'scrooloose/nerdtree'
Plug 'evidens/vim-twig'
call plug#end()


"SCSS/CSS

au BufRead,BufNewFile *.scss set filetype=scss.css
autocmd FileType scss set iskeyword+=-
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS noci


"Drupal file types
if has("autocmd")
  " Drupal *.module and *.install files.
  augroup module
    autocmd BufRead,BufNewFile *.module set filetype=php
    autocmd BufRead,BufNewFile *.install set filetype=php
    autocmd BufRead,BufNewFile *.test set filetype=php
    autocmd BufRead,BufNewFile *.inc set filetype=php
    autocmd BufRead,BufNewFile *.profile set filetype=php
    autocmd BufRead,BufNewFile *.view set filetype=php
  augroup END
endif
syntax on


"NerdTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
map <C-n> :NERDTreeToggle<CR>
