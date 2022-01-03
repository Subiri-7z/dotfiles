" Directorio de plugins
call plug#begin('~/.local/share/nvim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'sheerun/vim-polyglot'
Plug 'ghifarit53/tokyonight-vim'
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-surround'
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'preservim/nerdcommenter'
Plug 'jiangmiao/auto-pairs'
Plug 'alvan/vim-closetag'
Plug 'ryanoasis/vim-devicons'
Plug 'honza/vim-snippets'
Plug 'taohexxx/lightline-buffer'
Plug 'kkoomen/vim-doge', { 'do': { -> doge#install() } }
Plug 'puremourning/vimspector'
Plug 'tpope/vim-repeat'
call plug#end()

"---- Remappings ----
" Map the leader key to SPACE
let mapleader="\<SPACE>"

"---- Moving to other tabs
map <leader>h :wincmd h<CR>
map <leader>j :wincmd j<CR>

map <leader>k :wincmd k<CR>
map <leader>l :wincmd l<CR>

"--- Show NerdTree at current file's dir
nnoremap <Leader>pt :NERDTreeFind<Enter>

"Enter line in normal mode above and below"
nmap <Enter> o<esc>
nmap <S-Enter> O<ESC>

"Move lines up and down
nnoremap K :m .-2<CR>==
nnoremap J :m .+1<CR>==
vnoremap K :m '<-2<CR>gv=gv
vnoremap J :m '>+1<CR>gv=gv

"Disable highlight after search
nnoremap <esc> :noh<CR><esc>

"Cycle through buffers and close
nnoremap<C-n> :bnext<CR>
nnoremap<C-p> :bprevious<CR>
nnoremap<C-x> :bd<CR>

"Terminal mode exit ESC
tnoremap <Esc> <C-\><C-n>
map <F6> :let $VIM_DIR=expand('%:p:h')<CR><C-w>S <leader>j :terminal<CR>:resize 10<CR>i cd $VIM_DIR<CR><C-l>

"Tabs 4 size"
set tabstop=4     " Size of a hard tabstop (ts).
set shiftwidth=4  " Size of an indentation (sw).
set noshowmode    " Dont show mode
set expandtab   " Always uses tabs instead of space characters (noet).
set autoindent    " Copy indent from current line when starting a new line (ai).
set smarttab      " Inserts blanks on a <Tab> key (as per sw, ts and sts).
set noerrorbells        " No beeps
set showcmd             " Show (partial) command in status line
set showmatch           " Show matching brackets
set ruler               " Show line and column numbers of the cursor
set number              " Show line numbers
set relativenumber      "Show relative numbers"
set scrolloff=10        "Show 10 lines above and below"
set showmatch           "Highlight matching brackets"
set encoding=UTF-8
set updatetime=300      "Refresh quicker"
set showtabline=2       "Always show tabs in top line"
set mouse=a             "Mouse functionality"
set hidden              "Change buffer without saving"
set autochdir           "Change automatically directory to current file"

"-------- FUNCTIONS ---------


function! UseTabs()
    set tabstop=4     " Size of a hard tabstop (ts).
    set shiftwidth=4  " Size of an indentation (sw).
    set noexpandtab   " Always uses tabs instead of space characters (noet).
    set autoindent    " Copy indent from current line when starting a new line (ai).
endfunction

function! UseSpaces()
    set tabstop=4     " Size of a hard tabstop (ts).
    set shiftwidth=4  " Size of an indentation (sw).
    set expandtab     " Always uses spaces instead of tab characters (et).
    set softtabstop=4 " Number of spaces a <Tab> counts for. When 0, featuer is off (sts).
    set autoindent    " Copy indent from current line when starting a new line.
    set smarttab      " Inserts blanks on a <Tab> key (as per sw, ts and sts).
endfunction

"---- NVIM plugins configs ----
source $HOME/.config/nvim/plug-nerdtree.vim
source $HOME/.config/nvim/plug-coc.vim
source $HOME/.config/nvim/plug-lightline.vim
source $HOME/.config/nvim/plug-fzf.vim
source $HOME/.config/nvim/plug-closetag.vim
source $HOME/.config/nvim/plug-tokyocolorscheme.vim
source $HOME/.config/nvim/plug-vimspector.vim

