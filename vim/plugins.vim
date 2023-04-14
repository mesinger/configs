call plug#begin()

" visual
Plug 'vim-airline/vim-airline'
Plug 'airblade/vim-gitgutter'
Plug 'tomasiser/vim-code-dark'

" editor
Plug 'tpope/vim-commentary'
Plug 'terryma/vim-multiple-cursors'

" syntax
Plug 'majutsushi/tagbar'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" debug
Plug 'puremourning/vimspector'
let g:vimspector_enable_mappings = 'HUMAN'

call plug#end()

source ~/.config/nvim/vim/plugins/coc.vim
" source ~/.config/nvim/vim/plugins/treesitter.vim

