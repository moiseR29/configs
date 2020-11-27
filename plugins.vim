call plug#begin('~/.vim/plugged')

" Git Integration
Plug 'mhinz/vim-signify'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'junegunn/gv.vim'

" Themes 
"Plug 'morhetz/gruvbox'
Plug 'ayu-theme/ayu-vim'
Plug 'joshdick/onedark.vim'
"Plug 'mhartington/oceanic-next'

" Syntax
Plug 'yggdroot/indentline'
"Plug 'leafgarland/typescript-vim'
"Plug 'pangloss/vim-javascript'
"Plug 'HerringtonDarkholme/yats.vim'
Plug 'sheerun/vim-polyglot'

" IDE
Plug 'neoclide/coc.nvim', {'branch':'release'}
Plug 'lilydjwg/colorizer'
Plug 'mattn/emmet-vim'
Plug 'jiangmiao/auto-pairs'
Plug 'ddollar/nerdcommenter'
"Plug 'honza/vim-snippets'

" Navigate
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ryanoasis/vim-devicons'
Plug 'christoomey/vim-tmux-navigator'
Plug 'easymotion/vim-easymotion'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'jremmen/vim-ripgrep'

" Bar
Plug 'itchyny/lightline.vim'
"Plug 'vim-airline/vim-airline'
"Plug 'vim-airline/vim-airline-themes'


call plug#end()