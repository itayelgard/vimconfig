set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'sjl/badwolf'
Plugin 'preservim/nerdtree'
Plugin 'auto-pairs-gentle'
Plugin 'davidhalter/jedi-vim'
Plugin 'ervandew/supertab'
Plugin 'justmao945/vim-clang'

call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:


"jedi stuff
autocmd FileType python setlocal completeopt-=preview
let g:SuperTabDefaultCompletionType = "<c-x><c-o>"
let g:SuperTabClosePreviewOnPopupClose = 0
let g:jedi#popup_on_dot = 1
let g:jedi#force_py_version = 3


"hide status line:

let s:hidden_all = 0 
function! ToggleHiddenAll()
    if s:hidden_all  == 0 
        let s:hidden_all = 1
        set noshowmode
        set noruler
        set laststatus=0
        set noshowcmd
        set nonumber 
    else
        let s:hidden_all = 0
        set showmode
        set ruler
        set laststatus=2
        set showcmd
        set number
        set list
        set cursorline 
        set nowrap
    endif
endfunction
"use command "ToggleStatus"/ "TS" to toggle the statusBar
command ToggleStatus :call ToggleHiddenAll()<CR> 

command TS :call ToggleHiddenAll()<cr> 
map <f2> :call ToggleHiddenAll()<cr>
imap <f2> <c-o>:call ToggleHiddenAll()<cr>
"hebrew

"nerd tree
map <C-n> :NERDTreeToggle<CR>

"copy paste
vmap <C-c> "+p
nmap <C-b> "+p
map <C-b> "+p


syntax enable
filetype plugin on
filetype plugin indent on
set tabstop=4
set shiftwidth=4
set expandtab
set expandtab ts=4 sw=4 ai
set smartindent
set noshowmode
set number
set list
set cursorline
set nowrap
set laststatus=0
let python_highlight_all = 1
set showmatch

let g:clang_library_path="/usr/lib/llvm-3.8/lib/libclang.so.1"
set ignorecase
set incsearch
let g:clang_library_path='/usr/lib/libclang.so'
set directory=.,$TEMP

set background=dark
color badwolf

"airline
let g:airline_powerline_fonts = 1
let g_Powerline_symbols = 'fancy'
set encoding=utf-8
set list
set listchars=
set listchars+=tab:·\
set listchars+=trail:·
set listchars+=extends:»
set listchars+=precedes:«
set listchars+=nbsp:░
set t_Co=256
let g:airline_theme='minimalist'


vmap <C-c> :<Esc>`>a<CR><Esc>mx`<i<CR><Esc>my'xk$v'y!xclip -selection c<CR>u

