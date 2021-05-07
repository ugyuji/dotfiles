" plugin manager ---------------------------------------------
if &compatible
  set nocompatible
endif

" Plugin dir
let s:dein_dir = expand('~/.vim/bundles')

" dein.vim
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'

if &runtimepath !~# '/dein.vim'
  if !isdirectory(s:dein_repo_dir)
    execute '!git clone https://github.com/Shougo/dein.vim' s:dein_repo_dir
  endif
  execute 'set runtimepath^=' . fnamemodify(s:dein_repo_dir, ':p')
endif

" toml
let s:toml_dir=expand('~/.dein/')
let s:toml=s:toml_dir . 'dein.toml'
let s:toml_lazy=s:toml_dir . 'dein-lazy.toml'

" Load plugins
if dein#load_state(s:dein_dir)
  call dein#begin(s:dein_dir)

  call dein#load_toml(s:toml)
  call dein#load_toml(s:toml_lazy, {'lazy': 1})

  call dein#end()
  call dein#save_state()
endif

" Install plugins if they are not installed
if dein#check_install()
  call dein#install()
endif
" ------------------------------------------------------------

" Syntax
syntax enable

" Shell
set shell=/bin/zsh

" Encoding
set encoding=utf8
scriptencoding utf8
set fileencoding=utf-8
set termencoding=utf8
set fileencodings=utf-8,ucs-boms,euc-jp,ep932
set fileformats=unix,dos,mac
set ambiwidth=double
set nobomb
set t_Co=256

" No swap
set noswapfile

" Yank to clipboard
set clipboard=unnamed

" No beep sound
set belloff=all

" Row number
set number

" Title
set title

" Indent
filetype plugin indent on
set expandtab
set tabstop=2
set softtabstop=2
set autoindent
set smartindent
set shiftwidth=2
au FileType go setlocal sw=4 ts=4 sts=4 noet
set list listchars=tab:»-,trail:-,eol:↲,extends:»,precedes:«,nbsp:%

" Cursor
set cursorline
set cursorcolumn

" Search highlight
set hlsearch

" Statusline
set laststatus=2

" Command line auto-complete 
set wildmenu

" Theme 
set background=dark
colorscheme iceberg

" Mouse
set mouse=a
set ttymouse=xterm2

" Undo
set undofile

" Blacket auto-complete
inoremap { {}<Left>
inoremap [ []<Left>
inoremap ( ()<Left>

" Quote auto-complete
inoremap ' ''<LEFT>
inoremap " ""<LEFT>

filetype plugin on

" ファイルツリーの表示形式、1にするとls -laのような表示になります
let g:netrw_liststyle=1
" ヘッダを非表示にする
let g:netrw_banner=0
" サイズを(K,M,G)で表示する
let g:netrw_sizestyle="H"
" 日付フォーマットを yyyy/mm/dd(曜日) hh:mm:ss で表示する
let g:netrw_timefmt="%Y/%m/%d(%a) %H:%M:%S"
" プレビューウィンドウを垂直分割で表示する
let g:netrw_preview=1

