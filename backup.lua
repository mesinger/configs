vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

local home = os.getenv("HOME")

dofile(home .. '/.config/nvim/nvim/plugins.lua')
dofile(home .. '/.config/nvim/nvim/settings.lua')


-- The line beneath this is called `modeline`. See `:help modeline`
-- vim: ts=2 sts=2 sw=2 et
