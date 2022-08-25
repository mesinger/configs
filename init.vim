:set number
:set mouse=a
:set encoding=UTF-8

" inoremap " ""<left>
" inoremap ' ''<left>
" inoremap ( ()<left>
" inoremap [ []<left>
" inoremap { {}<left>
" inoremap {<CR> {<CR>}<ESC>O
" inoremap {;<CR> {<CR>};<ESC>O

" Required for rust-lang/rust.vim
syntax enable
filetype plugin indent on

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

call plug#end()

" NERDTree
" If more than one window and previous buffer was NERDTree, go back to it.
autocmd BufEnter * if bufname('#') =~# "^NERD_tree_" && winnr('$') > 1 | b# | endif

nnoremap <C-t> :NERDTreeToggle<CR>

" coc.nvim configuration

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" use <tab> for trigger completion and navigate to the next complete item
function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()

inoremap <expr> <Tab> coc#pum#visible() ? coc#pum#next(1) : "\<Tab>"
inoremap <expr> <S-Tab> coc#pum#visible() ? coc#pum#prev(1) : "\<S-Tab>"

" bufferline.nvim
set termguicolors
lua << EOF
require("bufferline").setup{}
EOF

nnoremap <S-J> :BufferLineCyclePrev <Enter>
nnoremap <S-K> :BufferLineCycleNext <Enter>
nnoremap <S-H> <C-w>h
nnoremap <S-L> <C-w>l

colorscheme xcodedark


