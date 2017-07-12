set shell=bash
set nocompatible
set backspace=2
set clipboard=unnamed
set mouse=a

set tabstop=2 shiftwidth=2 expandtab

" show line number
set nu

filetype plugin on
syntax on


" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" The-nerd tree and choosewin
Plugin 'The-NERD-tree'
Plugin 't9md/vim-choosewin'
"Plugin 'itchyny/lightline.vim'a
" normal use
Plugin 'Lokaltog/vim-easymotion'
Plugin 'jiangmiao/auto-pairs'
Plugin 'scrooloose/nerdcommenter'
Plugin 'tpope/vim-eunuch'
"Plugin 'othree/javascript-libraries-syntax.vim'
"Plugin 'Quramy/vim-js-pretty-template'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'w0ng/vim-hybrid'
Plugin 'vim-scripts/JavaScript-Indent'
Plugin 'Valloric/YouCompleteMe'
Plugin 'ternjs/tern_for_vim'

"Plugin 'vim icons'
Plugin 'ryanoasis/vim-devicons'

"Plugin 'jslint'

" Plugin surrend
Plugin 'tpope/vim-surround'

"Plugin 'wookiehangover/jshint.vim'

Plugin 'ntpeters/vim-better-whitespace'

Plugin 'sjl/vitality.vim'
"Plugin 'Yggdroot/indentLine'

Plugin 'tpope/vim-obsession'
call vundle#end()            " required
filetype plugin indent on    " required

autocmd vimenter * NERDTree
" Highlight currently open buffer in NERDTree
 "invoke with '-'
nmap  -  <Plug>(choosewin)
let g:choosewin_overlay_enable = 1

"for lightline.vim
	"let g:lightline = {
	"\ 'colorscheme': 'wombat',
	"\ }
"for easymotion
map <Leader><Leader>b <Plug>(easymotion-b)
map <Leader><Leader>w <Plug>(easymotion-w)

let g:used_javascript_libs = 'underscore,backbone'
" for syntax
let g:hybrid_custom_term_colors = 1
let g:hybrid_reduced_contrast = 1 " Remove this line if using the default palette.
colorscheme hybrid"

set guifont=Droid\ Sans\ Mono\ for\ Powerline\ Nerd\ Font\ Complete\ 12
set encoding=utf-8
let g:syntastic_javascript_checkers = ['jslint']
" Jump cursor to end of line
set whichwrap+=<,>,h,l,[,]
"On OSX
vmap <C-c> y:call system("pbcopy", getreg("\""))<CR>
nmap <C-v> :call setreg("\"",system("pbpaste"))<CR>p

set foldmethod=indent
set foldnestmax=10
set foldenable
set foldlevel=2
"set autoindent
