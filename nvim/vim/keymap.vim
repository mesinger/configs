let mapleader = " "

nmap <S-j> :bp<CR>
nmap <S-k> :bn<CR>
nmap <leader>fmt :Autoformat<CR>

" nerdtree
nnoremap <leader>n :NERDTreeFocus<CR>

" vimspector
nmap <leader>bp <Plug>VimspectorToggleBreakpoint<CR>
nmap <leader>db <Plug>VimspectorContinue<CR>
nmap <F8> <Plug>VimspectorStepOver<CR>
nmap <F9> <Plug>VimspectorStepInto<CR>

" fzf
nmap <leader>sf :GFiles<CR>
nmap <leader>sb :Buffers<CR>

" coc
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <leader> gg  <Plug>(coc-fix-current)

" augroup VimspectorEvents
"   au!
"   autocmd User VimspectorDebugEnded call vimspector#Reset()<CR>
" augroup END

nmap <silent> <leader>ss :TagbarToggle<CR>
