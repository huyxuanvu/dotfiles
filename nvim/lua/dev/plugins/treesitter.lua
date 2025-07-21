return{
    "nvim-treesitter/nvim-treesitter",
    branch = 'master',
    lazy = false,
    build = ":TSUpdate",
    config = function()
        require("nvim-treesitter.configs").setup {
        ensure_installed = { "lua", "python", "javascript","vim", "html", "css", "c", "cpp", "java" },
        highlight = { enable = true },
        indent = { enable = true },
    }
    end,
    


}
