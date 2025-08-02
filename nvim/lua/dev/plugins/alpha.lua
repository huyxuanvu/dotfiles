return {
  "goolord/alpha-nvim",
  event = "VimEnter",
  dependencies = {
    "nvim-tree/nvim-web-devicons"
  },
  config = function()
    local alpha = require("alpha")
    local dashboard = require("alpha.themes.dashboard")

    -- ✨ Header (Logo hoặc dòng chữ)
    dashboard.section.header.val = {
    "                           .__          .__ ",
  "___  _____ _______    ____ |  |__  __ __|__|",
  "\\  \\/  /  |  \\__  \\  /    \\|  |  \\|  |  \\  |",
  " >    <|  |  // __ \\|   |  \\   Y  \\  |  /  |",
  "/__/\\_ \\____/(____  /___|  /___|  /____/|__|",
  "      \\/          \\/     \\/     \\/          ",



    }

    -- 🎯 Các nút lệnh
    dashboard.section.buttons.val = {
    dashboard.button("e", "📄  New file", ":ene <BAR> startinsert<CR>"),
    dashboard.button("f", "🔍  Open file", function()
    require("lazy").load({ plugins = { "telescope.nvim" } })
    vim.schedule(function()
      require("telescope.builtin").find_files()
    end)
  end),

    dashboard.button("r", "🕘  Recently", function()
    require("lazy").load({ plugins = { "telescope.nvim" } })
    vim.schedule(function()
      require("telescope.builtin").oldfiles({ sort_mru = true })
    end)
  end),

  dashboard.button("s", "⚙️  Setting", ":e $MYVIMRC<CR>"),
  dashboard.button("q", "🚪  Quit", ":qa<CR>"),
}

    -- 📌 Footer
    dashboard.section.footer.val = {
      "💻 fucking your bug!"
    }

    -- Load dashboard
    alpha.setup(dashboard.config)
  end,
}

