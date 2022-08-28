autocmd BufEnter * if bufname('#') =~# "^NERD_tree_" && winnr('$') > 1 | b# | endif
nnoremap <C-t> :NERDTreeToggle<CR>
