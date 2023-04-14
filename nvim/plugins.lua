local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system {
    'git',
    'clone',
    '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.git',
    '--branch=stable',
    lazypath,
  }
end
vim.opt.rtp:prepend(lazypath)

require('lazy').setup({
  -- Detect tabstop and shiftwidth automatically
  'tpope/vim-sleuth',
  'jiangmiao/auto-pairs',
  'airblade/vim-gitgutter',
  'vim-airline/vim-airline',
  'tomasiser/vim-code-dark',
  'tpope/vim-commentary',
  'puremourning/vimspector',

  {
    'neovim/nvim-lspconfig',
    dependencies = {
      'williamboman/mason.nvim',
      'williamboman/mason-lspconfig.nvim',
      { 'j-hui/fidget.nvim', opts = {} },
      'folke/neodev.nvim',
    },
  },

  {
    'hrsh7th/nvim-cmp',
    dependencies = {
      'hrsh7th/cmp-nvim-lsp',
      'L3MON4D3/LuaSnip',
      'saadparwaiz1/cmp_luasnip'
    },
  },

  -- Useful plugin to show you pending keybinds.
  { 'folke/which-key.nvim', opts = {} },


  -- "gc" to comment visual regions/lines
  -- { 'numToStr/Comment.nvim', opts = {} },

  { -- Highlight, edit, and navigate code
    'nvim-treesitter/nvim-treesitter',
    dependencies = {
      'nvim-treesitter/nvim-treesitter-textobjects',
    },
    config = function()
      pcall(require('nvim-treesitter.install').update { with_sync = true })
    end,
  },
}, {})

local home = os.getenv("HOME")

vim.g.vimspector_enable_mappings = 'HUMAN'
vim.g.vimspector_install_gadgets = { 'vscode-node-debug2' }
vim.g.vimspector_base_dir = home .. '/.local/share/nvim/lazy/vimspector'


local function map(mode, lhs, rhs, opts)
  local options = { noremap=true, silent=true }
  if opts then
    options = vim.tbl_extend('force', options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

map('n', '<F5>', '<Plug>VimspectorContinue')
map('n', '<F9>', '<Plug>VimspectorToggleBreakpoint')

dofile(home .. '/.config/nvim/nvim/plugins/treesitter.lua')
dofile(home .. '/.config/nvim/nvim/plugins/lspconfig.lua')
dofile(home .. '/.config/nvim/nvim/plugins/cmp.lua')

