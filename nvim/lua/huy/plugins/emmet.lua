return {
  {
    "mattn/emmet-vim",
    ft = { "html", "css", "javascriptreact", "typescriptreact" },
    init = function()
      -- Đổi phím expand từ Ctrl+y, rồi , sang Ctrl+e cho tiện
      vim.g.user_emmet_expandabbr_key = "<C-e>"
    end,
  },
}

