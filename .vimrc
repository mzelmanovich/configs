set smartindent
set tabstop=2
set shiftwidth=2
set expandtab
set pastetoggle=<F2>
set nocompatible
set rtp+=~/.vim/bundle/Vundle.vim
set number
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'flazz/vim-colorschemes'
Plugin 'scrooloose/nerdtree'
Plugin 'pangloss/vim-javascript'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'kien/ctrlp.vim'
Plugin 'ap/vim-buftabline'
Plugin 'valloric/youcompleteme'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'scrooloose/nerdcommenter'
Plugin 'easymotion/vim-easymotion'
Plugin 'haya14busa/incsearch.vim'
Plugin 'haya14busa/vim-easyoperator-line'
Plugin 'haya14busa/incsearch-easymotion.vim'
call vundle#end()

syntax enable
syntax on
colorscheme xoria256
 autocmd VimEnter * exe "normal \<C-w>\<C-l>"
filetype on
filetype plugin on
set history=100

set nofoldenable

au BufNewFile,BufRead,BufReadPost *.jsc set syntax=javascript
au BufNewFile,BufRead,BufReadPost *.jsc set ft=javascript
au BufNewFile,BufRead,BufReadPost *.as set syntax=javascript
au BufNewFile,BufRead,BufReadPost *.as set ft=javascript
au BufNewFile,BufRead,BufReadPost *.jsi set syntax=javascript
au BufNewFile,BufRead,BufReadPost *.jsi set ft=javascript

set hlsearch!

" Map tab key to buffer changes
nmap <tab> :bn<cr>
nmap <s-tab> :bp<cr>

hi Search term=bold,reverse ctermfg=15 ctermbg=9 guifg=White guibg=Red

"let g:indent_guides_enable_on_vim_startup = 1
let g:ycm_disable_for_files_larger_than_kb = 0
set foldmethod=manual


if (has("termguicolors"))
  set termguicolors
endif


if &term =~# '^screen'
 let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
   let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
 endif

if &term =~ '256color'
 set t_ut=
endif


set backspace=indent,eol,start
set hidden " Allow background buffers without saving
map z/ <Plug>(incsearch-easymotion-/)
map z? <Plug>(incsearch-easymotion-?)

command! -nargs=+ JSgrep silent execute 'grep --include=\*.jsc --exclude-dir="jstags" -rn <args> ./' | copen 33 | cclose | bd | redraw! | copen 33
set autoread

autocmd FileType qf nnoremap <buffer> <CR> <CR>:cclose<CR>

"view tabs
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/

set shell=/bin/bash\ -i
