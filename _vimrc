set nocompatible "不要vim模仿vi模式，建议设置，否则会有很多不兼容的问题
syntax on "打开高亮
set t_Co=256
colors molokai

set modelines=0

" 自动检测文件类型并加载相应的设置
filetype plugin indent on

if has("autocmd")
    filetype plugin indent on "根据文件进行缩进
    augroup vimrcEx
        au!
        autocmd FileType text setlocal textwidth=78
        autocmd BufReadPost *
                    \ if line("'\"") > 1 && line("'\"") <= line("$") |
                    \ exe "normal! g`\"" |
                    \ endif
    augroup END
else
    "智能缩进，相应的有cindent，官方说autoindent可以支持各种文件的缩进，但是效果会比只支持C/C++的cindent效果会差一点，但笔者并没有看出来
    set autoindent " always set autoindenting on 
endif " has("autocmd")

set smartindent
set tabstop=4 "让一个tab等于4个空格
set shiftwidth=4 "使每层缩进的空格数
set softtabstop=4 "方便在开启了et后使用退格键
set expandtab
set smarttab
set list
set listchars=tab:>-,trail:-
" set foldmethod=indent "根据缩进折叠
set autoread

nnoremap tt :NERDTreeToggle<CR>
nnoremap Tl :Tlist<CR>

" tab navigation
nnoremap tl :tabnext<CR>
nnoremap th :tabprev<CR>
nnoremap tn :tabnew<CR>
nnoremap tc :tabclose<CR>
map <c-w>tn :tabnew<CR>:WMToggle<cr><c-w><c-w>

set scrolloff=3
set showmatch "设置匹配模式
set showmode
set showcmd
set hidden
set wildmenu
set visualbell
set cursorline
set ttyfast

let g:fencview_autodetect = 1   "打开文件时自动识别编码
let g:fencview_checklines = 10 "检查前后10行来判断编码
set fileencodings=ucs-bom,utf-8,gbk,big5,latin1
set langmenu=zh_CN.utf-8

" set vb t_vb= "去除vim的命令错误报警
set novisualbell
set ruler
set incsearch "在输入要搜索的文字时，vim会实时匹配
set backspace=indent,eol,start whichwrap+=<,>,[,] "允许退格键的使用
set laststatus=2
set relativenumber

let mapleader = ","
" nnoremap / /\v
" vnoremap / /\v
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch
nnoremap <leader><space> :noh<cr>
nnoremap <tab> %
vnoremap <tab> %

set wrap
set textwidth=79
set formatoptions=qrn1
set colorcolumn=85

"nnoremap <up> <nop>
"nnoremap <down> <nop>
"nnoremap <left> <nop>
"nnoremap <right> <nop>
"inoremap <up> <nop>
"inoremap <down> <nop>
"inoremap <left> <nop>
"inoremap <right> <nop>
"nnoremap j gj
"nnoremap k gk
"nnoremap ; :

nnoremap <leader>w <C-w>v<C-w>l
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

let g:ackprg="ack-grep -H --nocolor --nogroup --column"
nnoremap <leader>a :Ack

" python auto-complete code
" " Typing the following (in insert mode):
" "   os.lis<Ctrl-n>
" " will expand to:
" "   os.listdir(
" " Python 自动补全功能，用 Ctrl-N 调用
if has("autocmd")
    autocmd FileType python set complete+=k~/.vim/pydiction isk+=.,
endif

let Tlist_Ctags_Cmd = '/usr/bin/ctags'
let Tlist_Show_One_File = 1            "不同时显示多个文件的tag，只显示当前文件的
let Tlist_Exit_OnlyWindow = 1          "如果taglist窗口是最后一个窗口，则退出vim
let Tlist_Use_Right_Window = 1         "在右侧窗口中显示taglist窗口 

set autochdir
set tags=./tags
set tags+=tags;/

let NERDShutUp=1
