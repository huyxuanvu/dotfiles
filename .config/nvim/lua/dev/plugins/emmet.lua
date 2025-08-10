-- plugins/emmet.lua
return {
	"mattn/emmet-vim",
	ft = { "html", "css", "javascriptreact", "typescriptreact" },
	init = function()
		vim.g.user_emmet_leader_key = "<C-y>"
	end,
}
