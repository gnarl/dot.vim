
" When started as "evim", evim.vim will already have done these settings.
if v:progname =~? "evim"
  finish
endif

" Use Vim settings, rather then Vi settings (much better!).
" nocompatible must be set first
set nocompatible

"Use pathogen to easily include all plugins under ~/.vim/bundle
filetype off
execute pathogen#infect()
filetype plugin indent on

set backspace=indent,eol,start " allow backspacing over everything in insert mode

" For Win32 GUI: remove 't' flag from 'guioptions': no tearoff menu entries
" let &guioptions = substitute(&guioptions, "t", "", "g")

" Don't use Ex mode, use Q for formatting
map Q gq


" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if &t_Co > 2 || has("gui_running")
  syntax on
  set hlsearch
endif


set autoindent           " always set autoindenting on

set nobackup             " do not keep a backup file, use versions instead
set noswapfile
set history=50           " keep 50 lines of command line history
set ruler                " show the cursor position all the time
set showcmd              " display incomplete commands
set incsearch            " show matches as you type
set mouse=a              " enable using mouse in term if supported

set hidden               " hide buffers instead of closing them
set tabstop=2
set shiftwidth=2
set expandtab            " use spaces instead of \t
set visualbell t_vb=""
set nowrap
set showmatch            " show matching parens
set ignorecase
set smartcase            " ignore case if search is all lowercase
set wildmenu             " make tab completion for files/buffers act like bash
set wildmode=list:full   " show a list when pressing tab and complete first full match
set wildignore=*.swp,*.bak,*.pyc,*.class
set title                " change the terminal's title
set nofoldenable         " disable folding

set guicursor+=a:blinkon0 " Disable blinking for the love of sweden




"key mappings
let mapleader = ","

" use a more familar regex than vim's regex
nnoremap / /\v
vnoremap / /\v

":q
nnoremap <leader>q :q<CR>

"macro to wrap a line @ 80 char
let @l = '080lbi'

" clear search highlighting
nnoremap <leader><space> :noh<cr>

" create TODO file for today
nnoremap <expr> <Leader>t ":e ~/notes/TODO/" . strftime('%F') . ".todo.md"

nmap <leader>c :tabprevious<CR>
nmap <leader>v :tabnext<CR>
nmap <leader>n :bn<CR>
nmap <leader>m :bp<CR>
nmap <leader>k :bd<CR>
nmap <leader>; :buffers<CR>
nmap <leader>s :bufdo set spell!<CR>
nmap <leader>w :set linebreak<CR>:set wrap<CR>:set spell<CR>
nmap <leader>e :set nowrap<CR>:set nospell<CR>
nmap <leader>o :NERDTreeToggle<CR>

"colorscheme murphy
colorscheme gruvbox

"set guifont=Monaco:h14
"set guifont=Source_Code_Pro:h12
set guifont=FiraCodeNerdFontComplete-Regular:h12
set bg=dark

" run go imports on file save
let g:go_fmt_command = "goimports"

" Get signature/type infor for object under cursor
let g:go_auto_type_info = 1


let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_operators = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_build_constraints = 1
let g:go_highlight_generate_tags = 1


" vim-airline config
"let g:airline_powerline_fonts = 1
let g:airline_symbols_ascii = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='luna'
