lua << EOF
require'nvim-treesitter.configs'.setup{
	ensure_installed = {"java"},
	highlight = {
		enable = true,
	},
}
EOF

