return {
  "goolord/alpha-nvim",
  opts = function(_, opts)
    local raw_logo = [[
    ⣿⣿⣿⣿⣿⣿⡿⣟⠻⠯⠭⠉⠛⠋⠉⠉⠛⠻⢿⣿⣿⣿⣿⣿⣿
    ⣿⣿⣿⣿⡽⠚⠉⠀⠀⠀⠀⠀⠀⠀⠀⣀⣀⣀⠀⠈⠙⢿⣿⣿⣿
    ⣿⣿⠏⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣾⣿⣿⣿⣷⣦⡀⠶⣿⣿⣿
    ⣿⡏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿⣿⣿⡆⢻⣿⣿
    ⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⣿⣿⣤⣻⣿⣯⣤⣹⣿
    ⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⢿⣿⡇⠀⣿⢟⣿⡀⠟⢹⣿
    ⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢹⣷⣤⣤⣼⣿⣿⡄⢹⣿
    ⣷⠀⠀⠀⠶⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣿⣿⣿⣿⣿⣿⠛⠉⠈⢻
    ⣿⣷⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠛⠋⠛⠛⠛⠀⠀⣤⣾
    ⣿⣿⣿⣷⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠉⠉⠉⠉⠛⠁⣰⣿⣿
    ⣿⣿⣿⣿⣿⣷⣦⣤⣤⣤⣤⣄⣀⣀⣀⣀⣀⣠⣤⣤⣤⣾⣿⣿⣿
    
        [ anthony-halim ]
    ]]
    local packed_logo = vim.split(raw_logo, "\n", { trimempty = true })

    opts.section.header.val = packed_logo
  end,
}
