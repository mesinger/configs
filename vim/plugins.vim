call plug#begin()

Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'scrooloose/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'majutsushi/tagbar'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'rust-lang/rust.vim'
Plug 'arzg/vim-colors-xcode'
Plug 'udalov/kotlin-vim'
Plug 'airblade/vim-gitgutter'
Plug 'akinsho/bufferline.nvim', {'tag': 'v2.8.2'}
Plug 'jiangmiao/auto-pairs'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'tomasiser/vim-code-dark'
Plug 'terryma/vim-multiple-cursors'
Plug 'puremourning/vimspector'
let g:vimspector_enable_mappings = 'HUMAN'

call plug#end()

source ~/.config/nvim/vim/plugins/nerdtree.vim
source ~/.config/nvim/vim/plugins/coc.vim
source ~/.config/nvim/vim/plugins/bufferline.vim
source ~/.config/nvim/vim/plugins/treesitter.vim
source ~/.config/nvim/vim/plugins/rust.vim

