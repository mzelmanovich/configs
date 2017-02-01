set nocompatible
set rtp+=~/.vim/bundle/Vundle.vim
set number
call vundle#begin()
Plugin 'Valloric/YouCompleteMe'
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'Raimondi/delimitMate'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'pangloss/vim-javascript'
Plugin 'scrooloose/syntastic'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-fugitive'
Plugin 'altercation/vim-colors-solarized'
Plugin 'Chiel92/vim-autoformat'
Plugin 'scrooloose/nerdcommenter'
Plugin 'digitaltoad/vim-jade'
Plugin 'digitaltoad/vim-pug'
Plugin 'tpope/vim-surround'
Plugin 'bling/vim-airline'
Plugin 'easymotion/vim-easymotion'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'haya14busa/vim-easyoperator-line'
Plugin 'haya14busa/incsearch.vim'
Plugin 'haya14busa/incsearch-easymotion.vim'
call vundle#end()
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
set tabstop=4
set guifont=Meslo\ LG\ M\ Regular\ for\ Powerline

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_loc_list_height = 5
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
let g:syntastic_javascript_checkers = ['eslint']

let g:syntastic_error_symbol = '❌'
let g:syntastic_style_error_symbol = '⁉️'
let g:syntastic_warning_symbol = '⚠️'
let g:syntastic_style_warning_symbol = '💩'

highlight link SyntasticErrorSign SignColumn
highlight link SyntasticWarningSign SignColumn
highlight link SyntasticStyleErrorSign SignColumn
highlight link SyntasticStyleWarningSign SignColumn

syntax enable
syntax on
set background=dark
colorscheme solarized
autocmd VimEnter * NERDTree
autocmd VimEnter * exe "normal \<C-w>\<C-l>"
autocmd BufWritePre *.js :Autoformat
filetype on
filetype plugin on
set history=100
let g:airline#extensions#tabline#enabled = 1

set hlsearch
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)
map z/ <Plug>(incsearch-easymotion-/)
map z? <Plug>(incsearch-easymotion-?)
map zg/ <Plug>(incsearch-easymotion-stay)

let g:airline#extensions#syntastic#enabled = 1
let g:ycm_autoclose_preview_window_after_insertion = 1
