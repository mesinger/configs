lua << EOF
require'nvim-treesitter.configs'.setup{
	ensure_installed = {"java", "rust"},
	highlight = {
		enable = true,
	},
}
EOF

