
return {
  {
    "voldikss/vim-floaterm",
    cmd = { "FloatermNew", "FloatermToggle", "FloatermPrev", "FloatermNext" }, -- lazy load
    keys = {
      { "ft", "<cmd>FloatermToggle<CR>", mode = "n", desc = "Toggle Floaterm" },
      { "fn", "<cmd>FloatermNew<CR>", mode = "n", desc = "New Floaterm" },
      { "fp", "<cmd>FloatermPrev<CR>", mode = "n", desc = "Previous Floaterm" },
      { "fm", "<cmd>FloatermNext<CR>", mode = "n", desc = "Next Floaterm" },
      { "fk", "<cmd>FloatermKill<CR>", mode = "n", desc = "Kill Floaterm" },

    },
    config = function()
      vim.g.floaterm_width = 0.5
      vim.g.floaterm_height = 0.5
      vim.g.floaterm_position = 'center'
      vim.g.floaterm_borderchars = '─│─│╭╮╯╰'
    end,
  },
}
