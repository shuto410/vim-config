" プラグインが実際にインストールされるディレクトリ
let s:dein_dir = expand('~/.cache/dein')
" dein.vim 本体
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'

" dein.vim がなければ github から落としてくる
if &runtimepath !~# '/dein.vim'
  if !isdirectory(s:dein_repo_dir)
    execute '!git clone https://github.com/Shougo/dein.vim' s:dein_repo_dir
  endif
  execute 'set runtimepath^=' . fnamemodify(s:dein_repo_dir, ':p')
endif

" 設定開始
if dein#load_state(s:dein_dir)
  call dein#begin(s:dein_dir)

  " プラグインリストを収めた TOML ファイル
  " 予め TOML ファイル（後述）を用意しておく
  let g:rc_dir    = expand('~/.vim/rc')
  let s:toml      = g:rc_dir . '/dein.toml'

  " TOML を読み込み、キャッシュしておく
  call dein#load_toml(s:toml,      {'lazy': 0})

  " 設定終了
  call dein#end()
  call dein#save_state()
endif

" もし、未インストールものものがあったらインストール
if dein#check_install()
  call dein#install()
endif

set number
syntax on
set fenc=utf-8
set nobackup
set noswapfile
set autoread
set smartindent
set showcmd
set virtualedit=onemore
nnoremap j gj
nnoremap k gk
set expandtab
set tabstop=4
set shiftwidth=4
set ignorecase
set smartcase
set incsearch
set wrapscan
set hlsearch
nmap <Esc><Esc> :nohlsearch<CR><Esc>
set cursorline

let _curfile=expand("%:r")
if _curfile == 'Makefile'
  set noexpandtab
endif


inoremap <silent> jj <Esc>
nnoremap <silent><C-t> :NERDTreeToggle<CR>
inoremap <C-e> <Esc>$<Right>
inoremap <C-a> <Esc>^
noremap <C-e> <Esc>$<Right>
noremap <C-a> <Esc>^
inoremap {<Enter> {}<Left><CR><BS><BS><BS><BS><CR><Up><Tab>
inoremap [<Enter> []<Left>
inoremap (<Enter> ()<Left>
inoremap "<Enter> ""<Left>
inoremap '<Enter> ''<Left>
noremap x "_x

inoremap <silent> っj <ESC>
nnoremap あ a
nnoremap い i
nnoremap う u
nnoremap お o
nnoremap っd dd
nnoremap っy yy

nnoremap <C-j> <Down>
nnoremap <C-k> <Up>
nnoremap <C-h> <Left>
nnoremap <C-l> <Right>

inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-h> <Left>
inoremap <C-l> <Right>

nnoremap u g-
nnoremap <C-r> g+

set backspace=indent,eol,start

colorscheme codedark
