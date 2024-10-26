call plug#begin()

" visual
Plug 'vim-airline/vim-airline'
Plug 'airblade/vim-gitgutter'
Plug 'tomasiser/vim-code-dark'

" editor
Plug 'tpope/vim-commentary'
Plug 'terryma/vim-multiple-cursors'
Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'vim-autoformat/vim-autoformat'
Plug 'majutsushi/tagbar'

" nerdtree
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ryanoasis/vim-devicons'

" syntax
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" debug
Plug 'puremourning/vimspector'

call plug#end()

" coc
source ~/.config/nvim/vim/coc.vim

let g:vimspector_install_gadgets = [ 'vscode-js-debug' ]

" airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'

" treesitter
lua << EOF
require'nvim-treesitter.configs'.setup{
	ensure_installed = {"java", "rust"},
	highlight = {
		enable = true,
	},
}
EOF

" autoformat
au BufWrite * :Autoformat
let g:formatdef_latexindent = '"latexindent -"'

" nerdtree
" Start NERDTree, unless a file or session is specified, eg. vim -S session_file.vim.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') && v:this_session == '' | NERDTree | endif
" If another buffer tries to replace NERDTree, put it in the other window, and bring back NERDTree.
autocmd BufEnter * if winnr() == winnr('h') && bufname('#') =~ 'NERD_tree_\d\+' && bufname('%') !~ 'NERD_tree_\d\+' && winnr('$') > 1 |
    \ let buf=bufnr() | buffer# | execute "normal! \<C-W>w" | execute 'buffer'.buf | endif
" Close NERDTree
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | call feedkeys(":quit\<CR>:\<BS>") | endif

