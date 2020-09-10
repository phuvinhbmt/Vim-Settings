"Basic settings ---------------------- {{{

" Reference: https://www.youtube.com/watch?v=n9k9scbTuvQ
set relativenumber
syntax on 
set number 
"set hidden
"set guicursor=
"set nowrap
"set scrolloff=8
set smartcase
set noswapfile
set nobackup
set undofile
set incsearch "show search result while typing search
set hlsearch "higlight searches
set termguicolors
set showmode

" Reference: https://www.youtube.com/watch?v=nOhlk3mpgmM&list=PL3cu45aM3C2DJVGfCjSBB1yD9YkC7q27-&index=7
"set tab size to 4 spaces
set tabstop=4 
set softtabstop=4
set shiftwidth=4
"set tab to spac
set expandtab
set autoindent
set smartindent

set fileformat=unix
set wildmode=longest,list,full "set autocompletion by ctrl + n 
colorscheme desert "set colorscheme
"}}}

"Statusline settings ---------------------- {{{

set laststatus=2
set statusline=%.20F
"set statusline+=%=        " Switch to the right side
"set statusline+=%l        " Current line
"set statusline+=/         " Separator
"set statusline+=%L        " Total lines
"}}}

"Plugin settings---------------------- {{{

"  Reference: https://www.youtube.com/watch?v=UVgwbAAMLn4
filetype off

" set runtime path
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'VundleVim/Vundle.vim' "Vundle
Plugin 'preservim/nerdtree' "Nerdtree
" Plugins go down here. Keep Plugin commands between vundle#bgin/end
call vundle#end()            "required

filetype plugin indent on    "re-enable filetype
"}}}

"Own customziation 
"Mapping ---------------------- {{{

let mapleader = "-"
let maplocalleader = ","

"-: move current line down 
noremap <leader> ddp 
"_: move current line up 
noremap _ ddkP
"ctrl u (normal): capitalize current word 
nnoremap <c-u> bveU
"ctrl u (insert): capitalize current word 
inoremap <c-u> <esc>bveU
"<leader>ev (normal): open vimrc in vertical split
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
"<leader>sv (normal): source vimrc 
nnoremap <leader>sv :source $MYVIMRC<cr>
"<leader>" (normal): wrap current word with "
nnoremap <leader>" viw<esc>a"<esc>bi"<esc>lel
"<leader>" (normal): wrap current word with "
nnoremap <leader>' viw<esc>a'<esc>bi'<esc>lel
"H (normal): move to beginning of line
nnoremap H ^
"L (normal): move to end of line
nnoremap L $

"jk (i): esc
inoremap jk <esc>

"disable arrow in insert
"inoremap <Down> <nop>
"inoremap <Up> <nop>
"inoremap <Left> <nop>
"inoremap <Right> <nop>
"}}}

"java file setting ---------------------- {{{
augroup filetype_java
    autocmd!

    "soutln -> System.out.println();
    autocmd FileType java :iabbrev <buffer> soutl System.out.println();<left><left>
augroup END
"}}}

"python file setting ---------------------- {{{
augroup filetype_python
    autocmd!

    " localleader c (normal): comment line
    autocmd FileType python     nnoremap <buffer> <localleader>c I#<esc>

   " iff -> if:
    autocmd FileType python :iabbrev <buffer> iff if:<left>
augroup END
"}}}

" Vimscript file settings ---------------------- {{{
augroup filetype_vim
    autocmd!
    " < -> <> (normal)
    autocmd FileType vim inoremap <buffer> < <><esc>ha

    " Enable folding 
    autocmd FileType vim setlocal foldmethod=marker
augroup END
" }}}
"za to unfold
