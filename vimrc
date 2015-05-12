" UI
" git clone https://github.com/fatih/molokai.git and put molokai under .vim/colors dir
: colorscheme molokai
set ruler
set number
set background=dark
set t_Co=256
" set cursorline
set backspace=indent,eol,start
set fdm=indent
set nocompatible

let g:mapleader = ","
let mapleader = ","
nmap <Leader>q :q<CR>
nmap <Leader>wq :wq<CR>


" Bundle
" execute pathogen#infect()
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'fatih/vim-go'
let g:go_disable_autoinstall = 0
let g:go_fmt_command = "goimports"

au FileType go nmap gr :GoRun %<CR>
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
Plugin 'majutsushi/tagbar'
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
Plugin 'scrooloose/nerdtree'
let NERDTreeWinPos='right'
let NERDTreeWinSize=31
let NERDTreeChDirMode=1
map <F2> :NERDTreeToggle<CR>

" commentary
Plugin 'tpope/vim-commentary'

" ctrlp.vim
Plugin 'kien/ctrlp.vim'

" easy grep
Plugin 'dkprice/vim-easygrep'

" vim-airline status-line
Plugin 'bling/vim-airline'
let g:airline_powerline_fonts = 1
set laststatus=2

" auto close
" "Plugin 'vim-scripts/AutoClose'

" syntastic
Plugin 'scrooloose/syntastic'
 
let g:syntastic_error_symbol = "✗"
let g:syntastic_style_error_symbol = "⚡"
let g:syntastic_warning_symbol = "✗"
let g:syntastic_style_warning_symbol = "⚡"

" syntastic golang checker
let g:syntastic_go_checkers = ['go', 'golint', 'govet']

Plugin 'vim-scripts/Dutyl'
let g:dutyl_stdImportPaths=['/usr/local/Cellar/dmd/2.066.1/include/d2']

call vundle#end()

filetype plugin indent on
syntax on

nmap <Down> <PageDown>
nmap <Up> <PageUp>
