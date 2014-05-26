set nocompatible
filetype off 

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" plugins
Plugin 'airblade/vim-gitgutter'
Plugin 'Tabular'
Plugin 'farseer90718/vim-taskwarrior'
Plugin 'NathanNeff/grails-vim'
Bundle 'mileszs/ack.vim'
Bundle 'sjurgemeyer/vim-grails-import'
Bundle 'karlbright/qfdo.vim'
Bundle 'scrooloose/nerdcommenter'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-fugitive'

" All of your Plugins must be added before the following line
call vundle#end()            " required

call pathogen#infect()
call pathogen#incubate()
call pathogen#helptags()

filetype plugin indent on    " required

let mapleader=','
" source $VIMRUNTIME/vimrc_example.vim
" source $VIMRUNTIME/mswin.vim
" behave mswin

syntax on
set hlsearch
set number
set expandtab
set tabstop=8
set softtabstop=4
set shiftwidth=4
set autoindent
set nobackup
set foldmethod=syntax
set nofoldenable
set guioptions=mlrTb
set wrap!
set ruler
set history=200

":nmap <F3> :read !pwgen -cnB 8 1 <CR>
":nmap <f4> "=strftime("%c")<CR>P

"cnoremap <C-p> <Up>
"cnoremap <C-n> <Down>

let g:vim_arduino_sketchbook='/home/hgmiguel/sketchbook/'
let g:vim_arduino_sdk_home='/usr/share/arduino/'
let g:vim_arduino_port='/dev/ttyUSB0'
autocmd BufNewFile,BufReadPost *.ino,*.pde set filetype=cpp

set ofu=syntaxcomplete#Complete
"runtime macros/matchit.vim


set term=xterm-256color
let g:multi_cursor_next_key='<C-m>'

map <C-n> :NERDTreeToggle<CR>
let g:NERDTreeMinimalUI=1
let g:NERDTreeDirArrows=0

let g:fugitive_git_executable='LANG=en_US.UTF8 git'

set background=dark
set t_Co=16
colorscheme solarized
set statusline=%F%m%r%h%w\ 
set statusline+=%{fugitive#statusline()}\    
set statusline+=[%{strlen(&fenc)?&fenc:&enc}]
set statusline+=\ [line\ %l\/%L] 
command! W w
"Turn off the blinking cursor in normal mode:
"set gcr=n:blinkono
:autocmd InsertEnter * set cul
:autocmd InsertLeave * set nocul

if exists(":Tabularize")
  nmap <Leader>a= :Tabularize /=<CR>
  vmap <Leader>a= :Tabularize /=<CR>
  nmap <Leader>a: :Tabularize /:\zs<CR>
  vmap <Leader>a: :Tabularize /:\zs<CR>
endif

set wildignore+=*.class,.git,.hg,.svn,target/**


" tagbar support for groovy
 let g:tagbar_type_groovy = {
 \ 'ctagstype' : 'groovy',
 \ 'kinds' : [
 \ 'p:package',
 \ 'c:class',
 \ 'i:interface',
 \ 'f:function',
 \ 'v:variables',
 \ ]
 \ }


let g:tagbar_type_coffee = {
    \ 'ctagstype' : 'coffee',
    \ 'kinds'     : [
        \ 'c:classes',
        \ 'm:methods',
        \ 'f:functions',
        \ 'v:variables',
        \ 'f:fields',
    \ ]
\ }

" Posix regular expressions for matching interesting items. Since this will 
" be passed as an environment variable, no whitespace can exist in the options
" so [:space:] is used instead of normal whitespaces.
" Adapted from: https://gist.github.com/2901844
let s:ctags_opts = '
  \ --langdef=coffee
  \ --langmap=coffee:.coffee
  \ --regex-coffee=/(^|=[ \t])*class ([A-Za-z_][A-Za-z0-9_]+\.)*([A-Za-z_][A-Za-z0-9_]+)( extends ([A-Za-z][A-Za-z0-9_.]*)+)?$/\3/c,class/
  \ --regex-coffee=/^[ \t]*(module\.)?(exports\.)?@?(([A-Za-z][A-Za-z0-9_.]*)+):.*[-=]>.*$/\3/m,method/
  \ --regex-coffee=/^[ \t]*(module\.)?(exports\.)?(([A-Za-z][A-Za-z0-9_.]*)+)[ \t]*=.*[-=]>.*$/\3/f,function/
  \ --regex-coffee=/^[ \t]*(([A-Za-z][A-Za-z0-9_.]*)+)[ \t]*=[^->\n]*$/\1/v,variable/
  \ --regex-coffee=/^[ \t]*@(([A-Za-z][A-Za-z0-9_.]*)+)[ \t]*=[^->\n]*$/\1/f,field/
  \ --regex-coffee=/^[ \t]*@(([A-Za-z][A-Za-z0-9_.]*)+):[^->\n]*$/\1/f,static field/
  \ --regex-coffee=/^[ \t]*(([A-Za-z][A-Za-z0-9_.]*)+):[^->\n]*$/\1/f,field/
  \ --regex-coffee=/((constructor|initialize):[ \t]*\()@(([A-Za-z][A-Za-z0-9_.]*)+)([ \t]*=[ \t]*[^,)]+)?/\3/f,field/
  \ --regex-coffee=/((constructor|initialize):[ \t]*\()@(([A-Za-z][A-Za-z0-9_.]*)+)([ \t]*=[ \t]*[^,)]+)?(,[ \t]*@(([A-Za-z][A-Za-z0-9_.]*)+)([ \t]*=[ \t]*[^,)]+)?){0}/\8/f,field/
  \ --regex-coffee=/((constructor|initialize):[ \t]*\()@(([A-Za-z][A-Za-z0-9_.]*)+)([ \t]*=[ \t]*[^,)]+)?(,[ \t]*@(([A-Za-z][A-Za-z0-9_.]*)+)([ \t]*=[ \t]*[^,)]+)?){1}/\8/f,field/
  \ --regex-coffee=/((constructor|initialize):[ \t]*\()@(([A-Za-z][A-Za-z0-9_.]*)+)([ \t]*=[ \t]*[^,)]+)?(,[ \t]*@(([A-Za-z][A-Za-z0-9_.]*)+)([ \t]*=[ \t]*[^,)]+)?){2}/\8/f,field/
  \ --regex-coffee=/((constructor|initialize):[ \t]*\()@(([A-Za-z][A-Za-z0-9_.]*)+)([ \t]*=[ \t]*[^,)]+)?(,[ \t]*@(([A-Za-z][A-Za-z0-9_.]*)+)([ \t]*=[ \t]*[^,)]+)?){3}/\8/f,field/
  \ --regex-coffee=/((constructor|initialize):[ \t]*\()@(([A-Za-z][A-Za-z0-9_.]*)+)([ \t]*=[ \t]*[^,)]+)?(,[ \t]*@(([A-Za-z][A-Za-z0-9_.]*)+)([ \t]*=[ \t]*[^,)]+)?){4}/\8/f,field/
  \ --regex-coffee=/((constructor|initialize):[ \t]*\()@(([A-Za-z][A-Za-z0-9_.]*)+)([ \t]*=[ \t]*[^,)]+)?(,[ \t]*@(([A-Za-z][A-Za-z0-9_.]*)+)([ \t]*=[ \t]*[^,)]+)?){5}/\8/f,field/
  \ --regex-coffee=/((constructor|initialize):[ \t]*\()@(([A-Za-z][A-Za-z0-9_.]*)+)([ \t]*=[ \t]*[^,)]+)?(,[ \t]*@(([A-Za-z][A-Za-z0-9_.]*)+)([ \t]*=[ \t]*[^,)]+)?){6}/\8/f,field/
  \ --regex-coffee=/((constructor|initialize):[ \t]*\()@(([A-Za-z][A-Za-z0-9_.]*)+)([ \t]*=[ \t]*[^,)]+)?(,[ \t]*@(([A-Za-z][A-Za-z0-9_.]*)+)([ \t]*=[ \t]*[^,)]+)?){7}/\8/f,field/
  \ --regex-coffee=/((constructor|initialize):[ \t]*\()@(([A-Za-z][A-Za-z0-9_.]*)+)([ \t]*=[ \t]*[^,)]+)?(,[ \t]*@(([A-Za-z][A-Za-z0-9_.]*)+)([ \t]*=[ \t]*[^,)]+)?){8}/\8/f,field/
  \ --regex-coffee=/((constructor|initialize):[ \t]*\()@(([A-Za-z][A-Za-z0-9_.]*)+)([ \t]*=[ \t]*[^,)]+)?(,[ \t]*@(([A-Za-z][A-Za-z0-9_.]*)+)([ \t]*=[ \t]*[^,)]+)?){9}/\8/f,field/'

let $CTAGS = substitute(s:ctags_opts, '\v\([nst]\)', '\\', 'g')


 " Tab mappings.
map <leader>tt :tabnew<cr>
map <leader>te :tabedit
map <leader>tc :tabclose<cr>
map <leader>to :tabonly<cr>
map <leader>tn :tabnext<cr>
map <leader>tp :tabprevious<cr>
map <leader>tf :tabfirst<cr>
map <leader>tl :tablast<cr>
map <leader>tm :tabmove

map <leader>f :CommandTFlush<CR>

map <leader>b :CtrlPMRU<CR>

:au FocusLost * :wa
:set autowrite

set backupdir=./.backup,.,/tmp
set directory=./.backup,/tmp

map <leader>pt :vs ~/.thyme_today.md<cr>
map <leader>pd :!thyme -d<cr>
map <leader>ps :!thyme -s<cr>

autocmd FileType groovy setlocal shiftwidth=2 tabstop=2


function! GetRunningOS()
  if has("win32")
    return "win"
  endif
  if has("unix")
    if system('uname')=~'Darwin'
      return "mac"
    else
      return "linux"
    endif
  endif
endfunction
let os=GetRunningOS()

"Grails testing
map <S-F9> <Esc>:w<CR>:call RunSingleGrailsTest()<CR>
map <F9> <Esc>:w<CR>:call RunGrailsTestFile()<CR>
map <D-F9> :call RunLastCommandInTerminal()<CR>
command! TestResults :call TestResults()
map <leader>gi :call TestResults()<CR>

function! RunSingleGrailsTest()
    let testName = expand("%:t:r.") . "." . expand("<cword>")
    :call RunGrailsTest(testName)
endfunction

function! RunGrailsTestFile()
    let testName = expand("%:t:r")
    :call RunGrailsTest(testName)
endfunction

function! RunGrailsTest(testName)
    let path = expand("%:r")
    if path =~ "integration"
        let flag = "--integration"
    else
        let flag = "--unit"
    endif
    execute ":!grails test-app " . flag . " " . a:testName
endfunction


function! TestResults()
    let os=GetRunningOS()
    if os=~"unix"
        execute ":!gnome-open target/test-reports/html/index.html"
    else
        execute ":!open target/test-reports/html/index.html"
    endif
endfunction


au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

"to work with fuckin max osx
set clipboard=unnamed

let g:grails_import_list_file='/Users/miguel/.vim/grailsImportList.txt'

au FileType groovy call PareditInitBuffer()
