execute pathogen#infect()


let mapleader = " "

has("python3")

"supertab python
autocmd FileType python setlocal completeopt-=preview
let g:SuperTabDefaultCompletionType = "<c-x><c-o>"
let g:SuperTabClosePreviewOnPopupClose = 0
let g:jedi#popup_on_dot = 0
let g:jedi#force_py_version = 3
"regulars
syntax enable
filetype plugin on
filetype plugin indent on
vmap <C-c> :<Esc>`>a<CR><Esc>mx`<i<CR><Esc>my'xk$v'y!xclip -selection c<CR>u


let g:powerline_symbols = 'fancy'
if &term =~ '256color'
    " Disable Background Color Erase (BCE) so that color schemes
    " work properly when Vim is used inside tmux and GNU screen.
    set t_ut=
endif
"set number 
"custom keybinds
"runs current file using :R or f5 in normal mode
command R !./% 


"Super tab settings - uncomment the next 4 lines
"let g:SuperTabDefaultCompletionType = 'context'
"let g:SuperTabContextDefaultCompletionType = "<c-x><c-o>"
"let g:SuperTabDefaultCompletionTypeDiscovery = ["&omnifunc:<c-x><c-o>","&completefunc:<c-x><c-n>"]
"let g:SuperTabClosePreviewOnPopupClose = 1


 " clang autocomplete stuff 
let g:clang_library_path='/usr/lib/libclang.so'
let g:AutoPairsMapCR = 0

"haskell
" Disable haskell-vim omnifunc
let g:haskellmode_completion_ghc = 1
autocmd FileType haskell setlocal omnifunc=necoghc#omnifunc
let g:ycm_semantic_triggers = {'haskell' : ['.']}

let g:haskell_enable_quantification = 1   " to enable highlighting of `forall`
let g:haskell_enable_recursivedo = 1      " to enable highlighting of `mdo` and `rec`
let g:haskell_enable_arrowsyntax = 1      " to enable highlighting of `proc`
let g:haskell_enable_pattern_synonyms = 1 " to enable highlighting of `pattern`
let g:haskell_enable_typeroles = 1        " to enable highlighting of type roles
let g:haskell_enable_static_pointers = 1  " to enable highlighting of `static`
let g:haskell_backpack = 1                " to enable highlighting of backpack keywords
let g:haskell_classic_highlighting = 1
set background=dark
color badwolf


" air-line
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

"set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]

"hi StatusLine ctermbg=7 ctermfg=0

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


imap <f5> <c-o>:call ToggleHebrew()<cr>
map <f5> :call ToggleHebrew()<cr>

func! ToggleHebrew()
    if &rl
        set norl
        set keymap=
    else
        set rl
        set keymap=hebrew
    end
endfunc
" copy paste
vmap <C-c> "+y
nmap <C-b> "+p
map <C-b> "+p


"go to normal
imap <M-n> <Esc>

"b;ank line 
map <Enter> o<ESC>
map <S-Enter> O<ESC>

map <C-n> :NERDTreeToggle<CR>

"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif


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
let g:clang_library_path="/usr/lib/llvm-3.8/lib/libclang.so.1"
set ignorecase
set incsearch
let g:clang_library_path='/usr/lib/libclang.so'
set directory=.,$TEMP

autocmd VimLeave * call system("xsel -ib", getreg('+'))

