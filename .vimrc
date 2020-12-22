set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'bronson/vim-trailing-whitespace'

Plugin 'tomasr/molokai'

Plugin 'easymotion/vim-easymotion'

Plugin 'vim-airline/vim-airline'

Plugin 'vim-airline/vim-airline-themes'

Plugin 'tpope/vim-fugitive'

Plugin 'Yggdroot/indentLine'

Plugin 'terryma/vim-multiple-cursors'

Plugin 'jiangmiao/auto-pairs'

" Plugin 'Valloric/YouCompleteMe'

Plugin 'tpope/vim-surround'

Plugin 'scrooloose/nerdtree'

Plugin 'Xuyuanp/nerdtree-git-plugin'

Plugin 'ctrlpvim/ctrlp.vim'

Plugin 'scrooloose/nerdcommenter'

Plugin 'majutsushi/tagbar'

Plugin 'lervag/vimtex'

Plugin 'scrooloose/syntastic'

" Plugin 'craigemery/vim-autotag'

" Plugin 'davidhalter/jedi-vim'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
syntax on

let mapleader=" "

" enable persistent history, save undo files in .vim directory
let vimDir = '$HOME/.vim'
let &runtimepath.=','.vimDir

" Keep undo history across sessions by storing it in a file
if has('persistent_undo')
    let myUndoDir = expand(vimDir . '/undodir')
    " Create dirs
    call system('mkdir ' . vimDir)
    call system('mkdir ' . myUndoDir)
    let &undodir = myUndoDir
    set undofile
endif

set clipboard^=unnamed,unnamedplus

set pastetoggle=<C-w>p

set wildmenu
set backupdir=~/tmp,.,/var/tmp/vi.recover,/tmp
set directory=~/tmp,/var/tmp/vi.recover,/tmp,.
set nobackup
" set textwidth=78
set shiftwidth=4
set bs=2        " allow backspacing over everything in insert mode
set autoindent          " always set autoindenting on
set viminfo='20,\"50    " read/write a .viminfo file, don't store more
set hlsearch
set showmatch
set tabstop=4
set shiftwidth=4
set expandtab
set sts=4
set cindent
set fileencoding=utf8
set fileencodings=uft8,big5,gbk,ucs-bom,gb18030,sjis,latin1
set encoding=utf-8
set enc=utf-8
set tenc=utf-8
set smarttab
set t_Co=256
set number
set relativenumber
set cursorline
set laststatus=2
set showtabline=2
set list
" set mouse=a
set ignorecase
set smartcase

" vim splits
set splitbelow
set splitright

" reuse buffers of files which are already open, useful for quickfix
set switchbuf=useopen

" universal-ctags
set tags=./tags,tags;
" set autochdir
" nmap <C-[> <C-T>

set lcs=tab:\|\ 

let g:molokai_original = 1
let g:rehash256 = 1
colorscheme molokai

let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#tab_nr_type = 1
let g:airline#extensions#tmuxline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 0
let g:airline_extensions = ['tabline']
let g:airline_section_z = airline#section#create(['windowswap', '%3p%% ', 'linenr', ':%2v', ' | %{strftime("%H:%M")}'])

" function! AirlineInit()
"     let g:airline_section_a = airline#section#create_right(['%{strftime("%D %H:%M")}','mode'])
"     let g:airline_section_z = airline#section#create_right(['additional',])
" endfunction
" autocmd VimEnter * call AirlineInit()

let g:EasyMotion_do_mapping = 0
let g:EasyMotion_smartcase = 1

let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'

let g:tex_indent_items=0
let g:tex_conceal = ""

let g:ctrlp_prompt_mappings = {
    \ 'AcceptSelection("e")': ['<c-t>'],
    \ 'AcceptSelection("t")': ['<cr>', '<2-LeftMouse>'],
    \ }

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_mode_map = {
    \ "mode": "passive",
    \ "active_filetypes": [],
    \ "passive_filetypes": [] }

map s <Plug>(easymotion-s)
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)

nnoremap gr gT
nnoremap j gj
nnoremap k gk
nnoremap ; :
nnoremap w W
nnoremap b B

" esc in insert mode
inoremap jk <esc>
" esc in command mode
cnoremap jk <C-C>
" Note: In command mode mappings to esc run the command for some odd
" historical vi compatibility reason. We use the alternate method of
" existing which is Ctrl-C

" in normal mode F2 will save the file
" nmap <F2> :w<CR>
" in insert mode F2 will exit insert, save, enter insert again
" imap <F2> <ESC>:w<CR>a
" set pastetoggle=<F3>

:command NE NERDTreeToggle
" :command NEE NERDTreeClose
nnoremap <Tab> :bnext<CR>
nnoremap <S-Tab> :bprevious<CR>

:command TT TagbarToggle

"if &filetype == 'py'
"   set et
"endif

"set background=dark    " another is 'light'
"
let g:tex_flavor='latex'
