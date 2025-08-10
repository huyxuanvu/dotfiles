return {
	"nvim-tree/nvim-tree.lua",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	lazy = false,
	config = function()
		vim.g.loaded_netrw = 1
		vim.g.loaded_netrwPlugin = 1

		vim.opt.termguicolors = true

		require("nvim-tree").setup({
			sort = {
				sorter = "case_sensitive",
			},
			view = {
				width = 30,
				side = "left",
			},
			renderer = {
				group_empty = true,
				indent_markers = {
					enable = true,
					inline_arrows = true,
					icons = {
						corner = "└",
						edge = "│",
						item = "│",
						bottom = "─",
						none = " ",
					},
				},
				highlight_git = true,
				icons = {
					show = {
						git = true,
						file = true,
						folder = true,
						folder_arrow = true,
					},
					glyphs = {
						folder = {
							arrow_closed = "⏵",
							arrow_open = "⏷",
						},
						git = {
							unstaged = "✗",
							staged = "✓",
							unmerged = "⌥",
							renamed = "➜",
							untracked = "★",
							deleted = "⊖",
							ignored = "◌",
						},
					},
				},
			},
			filters = {
				dotfiles = false,
			},
			diagnostics = {
				enable = true,
				show_on_dirs = true,
			},
			git = {
				enable = true,
				ignore = false,
			},
		})
	end,
}
