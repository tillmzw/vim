syntax enable
set tabstop=4
set shiftwidth=4
set number
set showcmd
" highlight the whole selected line
set cursorline
filetype indent on
set wildmenu
set showmatch
set incsearch
set hlsearch
" enable folding
set foldenable
set foldlevelstart=10 " start folding at level 10
set foldnestmax=10 "max number of folds
nnoremap <space> za "space opens/closes folds
set foldmethod=indent "base folding on indentation

let mapleader=","
set laststatus=2

" exec the modeline if one present in the first 3 lines
set modeline
set modelines=3

" always keep 10 lines at the end of the buffer
set scrolloff=10

" select a text and replace occurences with another string in the whole buffer
" bound to CTRL+r
" https://stackoverflow.com/a/676619
vnoremap <C-r> "hy:%s/<C-r>h//gc<left><left><left>

" use the mouse, Luke
set mouse=a

" use spaces for yaml files
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

" show whitespace chars, and tab with a nice one
"set list lcs=tab:\┆\ 
set list lcs=tab:\|\ 

" disable full concealment when cursor is on the line for markdown
" this is overwritten by indentLine, so we need to apply some magic here
autocmd FileType markdown let g:indentLine_setConceal = 0 | set concealcursor=v

" ~~~~~~~
" EditorConfig
" ~~~~~~~

" ~~~~~~~
" PATHOGEN: Initialization
" ~~~~~~~
execute pathogen#infect()
execute pathogen#helptags()

" ~~~~~~~
" Themes
" ~~~~~~~
set background=dark
colorscheme wal 

" ~~~~~~~
" JEDI-VIM: Python autocomplete
" ~~~~~~~
let g:jedi#auto_initialization = 1
let g:jedi#auto_vim_configuration = 1

" ~~~~~~~
" VIM-AIRLINE: Status Bar
" ~~~~~~~
let g:airline_powerline_fonts = 1
let g:airline_theme='solarized'

" ~~~~~~~
" NERDTREE: File browser
" ~~~~~~~
" start on every vim start
"autocmd vimenter * NERDTree

" start vim when opening a directory
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

" start nerdtree when no files specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" close vim if only nerdtree buffer is open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" open nerdtree with ctrl+n
map <C-n> :NERDTreeToggle<CR>

" ~~~~~~~
" CTRLP: better fuzzy search
" https://github.com/ctrlpvim/ctrlp.vim
" ~~~~~~~
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'

" ~~~~~~~
" tagbar: ctags overview with F8
" ~~~~~~~
nmap <F8> :TagbarToggle<CR>

" ~~~~~~
" ALE: Syntax checking
" Note: requires eslint for javascript
"       use :help ale-navigation-commands for infos on how to move between
"       warnings/errors.
" ~~~~~~
let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'javascript': ['eslint'],
\   'python': ['flake8'],
\}
"let g:ale_fix_on_save = 1
" keep the sign column always open, not just when an issue was found
let g:ale_sign_column_always = 1
"let g:ale_sign_error = "◉"
"let g:ale_sign_warning = "◉"

" ~~~~~~~
" indentLine
" ~~~~~~~
let g:indentLine_char = '┆'

" ~~~~~~~
" uncrustify - c/c++ beautifier
" https://github.com/cofyc/vim-uncrustify
" <c-f> means CTRL+f or CTRL+c
" ~~~~~~~
autocmd FileType c noremap <buffer> <c-f> :call Uncrustify('c')<CR>
autocmd FileType c vnoremap <buffer> <c-f> :call RangeUncrustify('c')<CR>
autocmd FileType cpp noremap <buffer> <c-f> :call Uncrustify('cpp')<CR>
autocmd FileType cpp vnoremap <buffer> <c-f> :call RangeUncrustify('cpp')<CR>

