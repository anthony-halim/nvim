require("user.set")           -- Must be first to ensure correct settings 
require("user.packages")      -- Must be before any other packages are used

require("user.lualine")
require("user.telescope")
require("user.treesitter")
require("user.lsp")
require("user.themes")
require("user.explorertree")
require("user.comment")

require("user.remap")         -- Must be last to ensure overriding

-- The line beneath this is called `modeline`. See `:help modeline`
-- vim: ts=2 sts=2 sw=2 et
