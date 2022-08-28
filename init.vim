source ~/.config/nvim/settings.vim

if has('ide')
  source ~/.config/nvim/idea/plugins.vim
  source ~/.config/nvim/idea/keymap.vim
else
  source ~/.config/nvim/vim/plugins.vim
  source ~/.config/nvim/vim/keymap.vim
  source ~/.config/nvim/vim/visual.vim
endif
