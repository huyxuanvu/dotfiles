return {
	"akinsho/bufferline.nvim",
	version = "*",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		require("bufferline").setup({
			options = {
				mode = "buffers",
				separator_style = "thick",
				show_buffer_close_icons = true,
				show_close_icon = false,
			},
		})
		local keymap = vim.keymap.set
		local opts = { noremap = true, silent = true }

		keymap("n", "<Tab>", "<cmd>BufferLineCycleNext<CR>", opts)
		keymap("n", "<S-Tab>", "<cmd>BufferLineCyclePrev<CR>", opts)
		keymap("n", "<leader>bd", "<cmd>bd<CR>", opts)
		keymap("n", "<leader><", "<cmd>BufferLineMovePrev<CR>", opts)
		keymap("n", "<leader>>", "<cmd>BufferLineMoveNext<CR>", opts)
	end,
}
