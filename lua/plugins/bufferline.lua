local bufferline = require('bufferline')

bufferline.setup {
  options = {
    offsets = {
      {
        filetype = "NvimTree",
        text = "Explorer",
        text_align = "center",
        separator = true,
      }
    },
    show_buffer_close_icons = true,
    show_close_icon = true,
    show_tab_indicators = true,
    separator_style = "thick",
    hover = {
      enabled = false,
    },
  }
}
