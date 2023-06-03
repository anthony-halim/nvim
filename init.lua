require("user.set")           -- Must be first to ensure correct settings 
require("user.packages")      -- Must be before any other packages are used

require("plugins.lualine")
require("plugins.telescope")
require("plugins.treesitter")
require("plugins.lsp")
require("plugins.nvim-tree")
require("plugins.comment")
require("plugins.bufferline")
require("plugins.themes")

require("user.remap")         -- Must be after plugins to ensure overriding

-- The line beneath this is called `modeline`. See `:help modeline`
-- vim: ts=2 sts=2 sw=2 et
