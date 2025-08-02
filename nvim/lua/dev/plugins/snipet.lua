-- plugins/snippets.lua
return {
	"L3MON4D3/LuaSnip",
	dependencies = {
		"rafamadriz/friendly-snippets", -- Bộ snippet sẵn cho HTML, CSS, JS, React...
	},
	config = function()
		require("luasnip.loaders.from_vscode").lazy_load()
	end,
}
