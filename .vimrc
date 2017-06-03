call plug#begin('~/.vim/plugged')
Plug 'rstacruz/vim-closer'
Plug 'tpope/vim-surround'
Plug 'w0rp/ale'
Plug 'vim-scripts/Conque-GDB'
Plug 'tomtom/tcomment_vim'
Plug 'ajh17/VimCompletesMe'
Plug 'ludovicchabant/vim-gutentags'
Plug 'NLKNguyen/c-syntax.vim'
Plug 'romainl/Apprentice'
Plug 'dracula/vim'
Plug 'altercation/vim-colors-solarized'
Plug 'sjl/badwolf'
Plug 'joshdick/onedark.vim'
Plug 'NLKNguyen/papercolor-theme'
Plug 'kristijanhusak/vim-hybrid-material'
Plug 'jdkanani/vim-material-theme'
Plug 'junegunn/seoul256.vim'
Plug 'morhetz/gruvbox'
Plug 'nanotech/jellybeans.vim'
Plug 'ChrisKempson/Tomorrow-Theme'
Plug 'whatyouhide/vim-gotham'
Plug 'tomasr/molokai'
Plug 'crusoexia/vim-monokai'
call plug#end()
"if has('autocmd')
	filetype plugin indent on
"endif

syntax enable

colorscheme PaperColor

set autoindent                 " indent next line based on the previous one (e.g., whether it's a '{')

set expandtab                  " tabs to spaces

set shiftwidth=4               " number of columns used for reindent operations (<< and >> and ==) and automatic indention

set tabstop=4                  " number of columns in a tab
set softtabstop=4

set backspace=indent,eol,start " proper backspcae behavior

set wildmenu                   " command-line completion, use '<Tab>' to  move around and < CR > to validate

set ruler                      " show the current line-number, column number, etc. in the status-line

set number                     " show line-numbers in the LHS

set hidden                     " allow multiple files to be opened in different buffers, 'hidden' in the background

set laststatus=2               " always show the statusline

set hlsearch                   " highlight all occurrences of a searched word, cleared using :nohlsearch and :noh

set incsearch                  " highlight matches as you type

set showmatch                  " shows matching parentheses, braces, and brackets

runtime! macros/matchit.vim    " can jump to corresponding keywords

set t_ut=                      " fixes vim's background color erase

set hidden                     " buffers can be hidden in the background

set background=dark

if maparg('<C-L>', 'n') ==# ''
	nnoremap <silent> <C-L> :nohlsearch<C-R>=has('diff')?'<Bar>diffupdate':''<CR><CR><C-L>
endif

set ttimeout
set ttimeoutlen=100

if !&scrolloff
	set scrolloff=1
endif
if !&sidescrolloff
	set sidescrolloff=5
endif

set display+=lastline

set autoread

if &history < 1000
	set history=1000
endif
if &tabpagemax < 50
	set tabpagemax=50
endif
set sessionoptions-=options

if &t_Co == 8 && $TERM !~# '^linux\|^Eterm'
	set t_Co=16
endif

inoremap <C-U> <C-G>u<C-U>
