set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'

" Look & Feel. Status bar
Plugin 'bling/vim-airline'
" let g:airline#extensions#tabline#enabled = 1
" Color scheme
" Plugin 'altercation/vim-colors-solarized'

" Search and Code browsing
Plugin 'scrooloose/nerdtree'
" autocmd vimenter * NERDTree
Plugin 'kien/ctrlp.vim'
Plugin 'mileszs/ack.vim'
Plugin 'rking/ag.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-fugitive'
" Plugin 'myusuf3/numbers.vim'
nnoremap <F3> :NumbersToggle<CR>
nnoremap <F4> :NumbersOnOff<CR>
Plugin 'bronson/vim-trailing-whitespace'
" Plugin 'Valloric/YouCompleteMe'

" Language specific
Plugin 'scrooloose/syntastic'
Plugin 'ervandew/eclim'
Plugin 'derekwyatt/vim-scala'
Plugin 'elixir-lang/vim-elixir'
Plugin 'motus/pig.vim'
Plugin 'rodjek/vim-puppet'
" Requires vim (7.3.584/7.4), build-essential, cmake, python-dev and setup
" Plugin 'Valloric/YouCompleteMe'

" All of your Plugins must be added before the following line
call vundle#end()            " required

filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList          - list configured plugins
" :PluginInstall(!)    - install (update) plugins
" :PluginSearch(!) foo - search (or refresh cache first) for foo
" :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

syntax on
syntax enable

set ruler
" set number
set incsearch
set hlsearch
set ai
set expandtab
set shiftwidth=4
set noswapfile
set background=dark
set splitright
" set splitbelow

" colorscheme solarized

" Use pathogen to easily modify the runtime path to include all
" plugins under the ~/.vim/bundle directory
" call pathogen#helptags()
" call pathogen#runtime_append_all_bundles()
" execute pathogen#infect()

" Splits
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Useful mappings for managing tabs:
map <leader>tt :tabnew<cr>
" Opens a new tab with the current buffer's path
" Super useful when editing files in the same directory
map <leader>te :tabedit <c-r>=expand("%:p:h")<cr>/
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>to :tabonly<cr>
map <leader>tn :tabnext<cr>
map <leader>tp :tabprevious<cr>
map <leader>tf :tabfirst<cr>
map <leader>tl :tablast<cr>
map <leader>tm :tabmove

"map <C-[> :tabp <CR>
"map <C-]> :tabn <CR>
"tab mappings
" shorten :tabnew to :tn, :tabp to :th, :tabn to :tl
" ca tn tabnew
" ca tp tabp
" ca tn tabn
" CTRL-Tab is next tab
" map <C-Tab> <Esc>:tabnext<CR>
" noremap <C-Tab> :<C-U>tabnext<CR>
" inoremap <C-Tab> <C-\><C-N>:tabnext<CR>
" cnoremap <C-Tab> <C-C>:tabnext<CR>
" CTRL-SHIFT-Tab is previous tab
" noremap <C-S-Tab> :<C-U>tabprevious<CR>
" inoremap <C-S-Tab> <C-\><C-N>:tabprevious<CR>
" cnoremap <C-S-Tab> <C-C>:tabprevious<CR>
