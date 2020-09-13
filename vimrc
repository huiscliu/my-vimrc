" Configuration file for vim

"General
set history=3000
filetype on
filetype plugin on
syntax on

"theme
"colorscheme 

" check one time after 4s of inactivity in normal mode
set autoread
au CursorHold * checktime

set encoding=utf-8
set fileencodings=utf-8,gb2312,gb18030,gbk,ucs-bom,cp936,latin1
set termencoding=utf-8

"deal with tab and shift
set smarttab
set et
set ts=4
set shiftwidth=4

"text width
set tw=110

set hidden
set magic
set incsearch
set hlsearch
set smartcase
set showmatch
set vb t_vb= 
set novisualbell
set tags=tags;

"For programming
set sm
set ru
set wildmenu
set wildmode=list:longest

set nosmartindent
set cindent
filetype plugin indent on
set cinkeys-=0#

set pastetoggle=<F2>
"set showmode
"set scrolloff=1000
"set mouse=r
set clipboard=unnamed
"set clipboard=unnamedplus
"set completeopt=longest,menu
"set synmaxcol=120
set ttyfast " u got a fast terminal
"set ttyscroll=3
set lazyredraw " to avoid scrolling problems

" statusline
" cf the default statusline: %<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P
" format markers:
"   %< truncation point
"   %n buffer number
"   %f relative path to file
"   %m modified flag [+] (modified), [-] (unmodifiable) or nothing
"   %r readonly flag [RO]
"   %y filetype [ruby]
"   %= split point for left and right justification
"   %-35. width specification
"   %l current line number
"   %L number of lines in buffer
"   %c current column number
"   %V current virtual column number (-n), if different from %c
"   %P percentage through buffer
"   %) end of width specification
set laststatus=2
set statusline=%<\ %n:%f\ %m%r%y%=%-35.(%l\ of\ %L,\ %c%)
"au InsertEnter * set laststatus=0
"au InsertLeave * set laststatus=2

au BufWinEnter *[mM]akefile*,*.mk,*.mak,*.dsp,Make*.in set noet
au BufWinEnter *[mM]akefile,*.mk,*.mak,*.dsp,Make*.in set noet
au BufWinEnter *[mM]akefile*,*.mk,*.mak,*.dsp,Make*.in set tw=0
au BufWinEnter *[mM]akefile,*.mk,*.mak,*.dsp,Make*.in set tw=0

if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" map keys
map f <C-f>
map b <C-b>
map t <C-o>
map W <C-w>
map Z ZZ
map t <C-t>
map [ <C-]>
nmap <space> zz
map s <C-^>

let mapleader=","
let g:mapleader=","

map <leader>n :cn<cr>
map <leader>p :cp<cr>
map <leader>e :set noet<cr>
map <leader>w :set tw=0<cr>

