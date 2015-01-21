" UI
" git clone https://github.com/fatih/molokai.git and put molokai under .vim/colors dir
: colorscheme molokai 
set ruler
set number
set background=dark
set t_Co=256
set cursorline
set backspace=indent,eol,start
set fdm=indent
set nocompatible

let g:mapleader = ","
let mapleader = ","

" Bundle
execute pathogen#infect()
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Bundle 'gmarik/vundle'
Bundle 'Valloric/YouCompleteMe'
Bundle 'fatih/vim-go'
let g:go_disable_autoinstall = 0
let g:go_fmt_command = "goimports"

nmap gr :GoRun %<CR>
au FileType go nmap <Leader>dt <Plug>(go-def-tab)

" no backup
set nobackup
set noswapfile
set nowb

" encoding
set encoding=utf8

" auto, smart indent
set ai
set si

" highlight search
set hlsearch

" open file in the place last modified
autocmd BufReadPost *
			\ if line("'\"")>0&&line("'\"")<=line("$") |
			\exe "normal g'\"" |
			\ endif

" go tags
Bundle 'majutsushi/tagbar'
nmap <F8> :TagbarToggle<CR>
let g:tagbar_type_go = {
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin'  : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
    \ }


" nerd tree
Bundle 'scrooloose/nerdtree'
let NERDTreeWinPos='right'
let NERDTreeWinSize=31
let NERDTreeChDirMode=1
map <F2> :NERDTreeToggle<CR>

filetype plugin indent on
syntax on

nmap <Down> <PageDown>
nmap <Up> <PageUp>
