"
"
" this is all for vundle plugins
"
"

set nocompatible              " be iMproved, required
filetype off                  " required

execute pathogen#infect()


filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:

syntax enable           " enable syntax processing

" size of a hard tabstop
set tabstop=4

" size of an "indent"
set shiftwidth=4

" a combination of spaces and tabs are used to simulate tab stops at a width
" other than the (hard)tabstop
set softtabstop=4
set expandtab       " tabs are spaces
set showcmd             " show command in bottom bar
set number              " show line numbers
filetype indent on      " load filetype-specific indent files
set wildmenu            " visual autocomplete for command menu
set lazyredraw          " redraw only when we need to.
set incsearch           " search as characters are entered
set hlsearch            " highlight matches
set backspace=2       " some hack from online because backspaces weren't working
" make it so ctrl-D exits to terminal while saving session
nnoremap <C-D> :sh<CR>

" turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>
" move vertically by visual line
" nnoremap j gj
" nnoremap k gk

" move to beginning/end of line
nnoremap B ^
nnoremap E $

" $/^ doesn't do anything
nnoremap $ <nop>
nnoremap ^ <nop>

" set tabstop to 4 spaces 
set ts=4


" set custom leader
let mapleader="," 

" make NERD_TREE auto start for vim
" autocmd vimenter * NERDTree
" remap nerdtree to ctrl-n
map <C-n> :NERDTreeToggle<CR>

nnoremap <leader>ev :vsp $MYVIMRC<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>


" allows cursor change in tmux mode
if exists('$TMUX')
    let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
    let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
    let &t_SI = "\<Esc>]50;CursorShape=1\x7"
    let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif

" set 256 colors 
set t_Co=256


" set cursor color "
highlight Cursor guifg=white guibg=black
highlight iCursor guifg=white guibg=steelblue
set guicursor=n-v-c:block-Cursor
set guicursor+=i:ver100-iCursor
set guicursor+=n-v-c:blinkon0
set guicursor+=i:blinkwait10


" custom remaps for me
nnoremap <F4> :tabn<CR>
nnoremap <F2> :tabp<CR>
nnoremap <F3> :tabe

" splits and split navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

set splitbelow
set splitright

set nowrap

" doesn't save stuff that doesn't need to be saved
" during a session (from S.O)
set ssop-=options    " do not store global and local values in a session
set ssop-=folds      " do not store folds
