return {
  "folke/noice.nvim",
  event = "VeryLazy",
  dependencies = {
    "MunifTanjim/nui.nvim",
    "rcarriga/nvim-notify", 
  },
  config = function()
    require("noice").setup({
      -- cấu hình ví dụ
      cmdline = {
        enabled = true,
        view = "cmdline_popup", -- popup nổi lên
        format = {
          cmdline = { icon = "", lang = "vim" },
          search_down = { icon = " ", lang = "regex" },
          search_up = { icon = " ", lang = "regex" },
        },
      },
      views = {
        cmdline_popup = {
          position = {
            row = "20%",
            col = "50%",
          },
          size = {
            width = 60,
            height = "auto",
          },
        },
      },
      messages = {
        enabled = true,
      },
      popupmenu = {
        enabled = true,
        backend = "nui",
      },
    })

    vim.notify = require("notify")
  end,
}

