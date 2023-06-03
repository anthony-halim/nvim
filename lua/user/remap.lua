-- Code editing
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move highlighted block ([J])up" })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move higlighted block ([K])down" })

-- This is going to get me cancelled
vim.keymap.set("i", "<C-c>", "<Esc>")
vim.keymap.set("v", "<C-c>", [["+Y]])

-- Safety
vim.keymap.set("n", "Q", "<nop>")

-- Format
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format, { desc = "[F]ormat file" })

-- NvimTree
vim.keymap.set('n', '<leader>te', ":NvimTreeToggle<cr>", { silent = true })
vim.keymap.set('n', '<leader>tf', ":NvimTreeFocus<cr>", { silent = true })
vim.keymap.set('n', '<leader>tr', ":NvimTreeRefresh<cr>", { silent = true })

-- Telescope
-- See `:help telescope.builtin`
vim.keymap.set('n', '<leader>?', require('telescope.builtin').oldfiles, { desc = '[?] Find recently opened files' })
vim.keymap.set('n', '<leader><space>', require('telescope.builtin').buffers, { desc = '[ ] Find existing buffers' })
vim.keymap.set('n', '<leader>/', function()
  -- You can pass additional configuration to telescope to change theme, layout, etc.
  require('telescope.builtin').current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
    winblend = 10,
    previewer = false,
  })
end, { desc = '[/] Fuzzily search in current buffer' })
vim.keymap.set('n', '<leader>gf', require('telescope.builtin').git_files, { desc = 'Search [G]it [F]iles' })
vim.keymap.set('n', '<leader>sf', require('telescope.builtin').find_files, { desc = '[S]earch [F]iles' })
vim.keymap.set('n', '<leader>sh', require('telescope.builtin').help_tags, { desc = '[S]earch [H]elp' })
vim.keymap.set('n', '<leader>sw', require('telescope.builtin').grep_string, { desc = '[S]earch current [W]ord' })
vim.keymap.set('n', '<leader>sg', require('telescope.builtin').live_grep, { desc = '[S]earch by [G]rep' })
vim.keymap.set('n', '<leader>sd', require('telescope.builtin').diagnostics, { desc = '[S]earch [D]iagnostics' })

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous diagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next diagnostic message' })
vim.keymap.set('n', '<leader>de', vim.diagnostic.open_float, { desc = 'Open floating diagnostic message' })
vim.keymap.set('n', '<leader>dl', vim.diagnostic.setloclist, { desc = 'Open diagnostics list' })

-- Splits
vim.keymap.set('n', '<M-;>', [[:split<cr>]], { desc = 'Split (horizontal)'})
vim.keymap.set('n', '<M-\'>', [[:vsplit<cr>]], { desc = 'Split (vertical)'})
vim.keymap.set('n', '<M-w>', [[:q<cr>]], { desc = 'Close current split'})
vim.keymap.set('n', '<M-h>', [[<C-\><C-n><C-w>h]], { desc = 'Go to left split'})
vim.keymap.set('n', '<M-j>', [[<C-\><C-n><C-w>j]], { desc = 'Go to bottom split'})
vim.keymap.set('n', '<M-k>', [[<C-\><C-n><C-w>k]], { desc = 'Go to above split'})
vim.keymap.set('n', '<M-l>', [[<C-\><C-n><C-w>l]], { desc = 'Go to right split'})
vim.keymap.set('n', '<M-[>', [[:vertical resize +3<cr>]], { desc = 'Increase width of current split'})
vim.keymap.set('n', '<M-]>', [[:vertical resize -3<cr>]], { desc = 'Decrease width of current split'})
vim.keymap.set('n', '<M-{>', [[:resize +3<cr>]], { desc = 'Increase height of current split'})
vim.keymap.set('n', '<M-}>', [[:resize -3<cr>]], { desc = 'Decrease height of current split'})
