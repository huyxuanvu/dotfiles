
return {
  'akinsho/bufferline.nvim',
  version = "*",
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    require('bufferline').setup {
      options = {
        mode = "buffers",
        separator_style = "thick",
        show_buffer_close_icons = true,
        show_close_icon = false,
        }

    }
  end
}
