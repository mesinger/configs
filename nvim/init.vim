source ~/.config/nvim/settings.vim

if has('ide')
  source ~/.config/nvim/idea/idea.vim
  source ~/.config/nvim/idea/plugins.vim
  source ~/.config/nvim/idea/keymap.vim
else
  let g:python3_host_prog = '/usr/local/bin/python3'
  source ~/.config/nvim/vim/plugins.vim
  source ~/.config/nvim/vim/keymap.vim
  colorscheme codedark
endif
