let mapleader = " "

nmap <S-j> :bp<CR>
nmap <S-k> :bn<CR>
nmap <leader>fmt :Autoformat<CR>

" vimspector
nmap <leader>bp <Plug>VimspectorToggleBreakpoint<CR>
nmap <leader>db <Plug>VimspectorContinue<CR>
nmap <F8> <Plug>VimspectorStepOver<CR>
nmap <F9> <Plug>VimspectorStepInto<CR>

" fzf
nmap <leader>sf :Files<CR>
nmap <leader>sb :Buffers<CR>

" augroup VimspectorEvents
"   au!
"   autocmd User VimspectorDebugEnded call vimspector#Reset()<CR>
" augroup END

nmap <silent> <leader>ss :TagbarToggle<CR>
