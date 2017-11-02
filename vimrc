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

" ~~~~~~~
" EditorConfig 
" ~~~~~~~
let g:EditorConfig_core_mode = 'external_command'

" ~~~~~~~
" PATHOGEN: Initialization 
" ~~~~~~~
execute pathogen#infect()
execute pathogen#helptags()

" ~~~~~~~
" Themes 
" ~~~~~~~
set background=dark
colorscheme solarized

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

