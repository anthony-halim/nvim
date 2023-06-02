require('lualine').setup {
  options = {
    theme = 'onedark',
    component_separators = '|',
    section_separators = '',
  },
  sections = {
    lualine_a = {
      { 'mode', separator = { left = '' }, right_padding = 2 },
    },
    lualine_z = {
      { 'location', separator = { right = '' }, left_padding = 2 },
    },
  },
  tabline = {},
  extensions = {},
}
