"--------- Vim Configuration ----------

syntax on

set tabstop=4 softtabstop=4
set noerrorbells
set shiftwidth=4
set expandtab
set smartindent
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set incsearch
set encoding=utf-8
set undodir=~/.vim/undo
set undofile
set nocompatible
set rnu
set backspace=indent,eol,start
set completeopt-=preview
set termguicolors
set clipboard+=unnamedplus

colo koehler 

au BufEnter *.md set spell spelllang=en_us

""--------- Vim Plug Management ----------

call plug#begin('~/.vim/plugged')

""------ Styling Assistance -----
Plug 'junegunn/vim-easy-align'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'wsdjeg/vim-todo'

""------ Syntax & Autocomplete -----
Plug 'valloric/youcompleteme'
Plug 'scrooloose/syntastic'
Plug 'sheerun/vim-polyglot'
Plug 'mattn/emmet-vim'
Plug 'jiangmiao/auto-pairs'

""------ Directory-Related -----
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'vim-utils/vim-man'
Plug 'mbbill/undotree'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'jremmen/vim-ripgrep'

""------ Aesthetics -----
Plug 'flazz/vim-colorschemes'

call plug#end()

""----------- Vim Settings --------------
let mapleader = ","

let $FZF_DEFAULT_COMMAND='rg --files'
nnoremap <C-p> :Files<CR>

let $FZF_DEFAULT_OPTS='--reverse'
let g:fzf_layout = { 'window': {'width': 0.8, 'height': 0.8} }
" let g:syntastic_python_checkers = ['pylint']

" project search/replace
nnoremap <leader>ps :Rg<SPACE>
nnoremap <leader>pw :Rg <C-R>=expand("<cword>")<CR><CR>

let g:NERDTreeShowHidden=1
nnoremap <leader>ne :NERDTreeToggle<CR>

nnoremap <leader>ut :UndotreeToggle<CR>

nnoremap <leader>vs :vsplit<CR>

nnoremap <leader>w <C-W>w<CR>
nnoremap <leader>q :q<CR>
nnoremap <leader>s :w<CR>
nnoremap <leader>z :qa<CR>
nnoremap <leader>nt :tabnew<SPACE>

nnoremap <leader>gt :Git<SPACE>

nnoremap <silent> gd :YcmCompleter GoToDeclaration<CR>
nnoremap <silent> gy :YcmCompleter GoToDefinition<CR> 
nnoremap <silent> gr :YcmCompleter GoToReferences<CR>
inoremap jk <ESC>

