" Sky Fernandez

set nocompatible                  " Must come first because it changes other options.

let mapleader = ","

imap <esc> <nop>
inoremap jk <ESC> 

" set t_Co=256
set background=dark
colorscheme solarized

syntax enable                     " Turn on syntax highlighting.
filetype plugin indent on         " Turn on file type detection.
set fileformats+=dos              " Dont add a newline at the end of the file

set showcmd                       " Display incomplete commands.
set showmode                      " Display the mode you're in.

set backspace=indent,eol,start    " Intuitive backspacing.

set hidden                        " Handle multiple buffers better.

set wildmenu                      " Enhanced command line completion.
set wildmode=list:longest         " Complete files like a shell.

set ignorecase                    " Case-insensitive searching.
set smartcase                     " But case-sensitive if expression contains a capital letter.

set ruler                         " Show cursor position.

set incsearch                     " Highlight matches as you type.
set hlsearch                      " Highlight matches.
nnoremap <leader><space> :noh<cr>
set wildignore+=node_modules/

set wrap                          " Turn on line wrapping.
set scrolloff=3                   " Show 3 lines of context around the cursor.

set title                         " Set the terminal's title

set laststatus=2                  " Show the status line all the time

set visualbell                    " No beeping.
set guicursor+=a:blinkon0         " Disable cursor blinking

" Backup options (needs ~/.vim-bk setup beforehand)
set backup 
set backupdir=~/.vim-bk,~/.tmp,~/tmp,/var/tmp,/tmp 
set backupskip=/tmp/*,/private/tmp/* 
set directory=~/.vim-bk,~/.tmp,~/tmp,/var/tmp,/tmp 
set writebackup

set textwidth=79

" Relative line numbers by default, C-n to toggle
set relativenumber

function! NumberToggle()
  if(&relativenumber == 1)
    set number
  else
    set relativenumber
  endif
endfunc

nnoremap <C-n> :call NumberToggle()<cr>

set fo=tcrqn             " See help (complex).
set ai                   " Auto-indent.
set cinkeys-=0#          " Prevent unindenting of '#'.
set tabstop=4            " Tab spacing (settings below correspond to unify.
set softtabstop=2        " Unify.
set shiftwidth=2         " Indent/outdent by 4 columns.
set shiftround           " Always indent/outdent to the nearest tabstop.
set expandtab            " Use spaces instead of tabs.
set smarttab             " Use tabs at the start of a line, spaces elsewhere.
set nowrap      

" Disable Arrow Keys
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>

" Split navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Edit .vimrc on the fly
nnoremap <leader>ev <C-w><C-v><C-l>:e $MYVIMRC<cr>

" match ErrorMsg '\%>79v.\+'
set cc=80
highlight ColorColumn ctermbg=235 guibg=#222222

let g:jsx_ext_required = 0 " Allow JSX in normal JS files

" CtrlP Configuration
set wildignore+=*/node_modules/*,*/dist/*
nnoremap <leader>t :CtrlP<CR>

" let g:ctrlp_map = '<,-t>'
" imap <C-o> <CR><esc>o
"

" replace selected with <c-r>
vnoremap <C-r> "hy:%s/<C-r>h//gc<left><left><left>

call plug#begin('~/.vim/plugged')

Plug 'altercation/vim-colors-solarized'
Plug 'ctrlpvim/ctrlp.vim'

Plug 'tpope/vim-fugitive'

Plug 'Raimondi/delimitMate'

Plug 'jelera/vim-javascript-syntax'
Plug 'pangloss/vim-javascript'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'mxw/vim-jsx'

Plug 'elixir-lang/vim-elixir'

call plug#end()
