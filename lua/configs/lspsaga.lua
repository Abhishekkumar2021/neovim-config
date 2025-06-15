return function()
  require("lspsaga").setup({
    ui = {
      border = "rounded",
      code_action = "💡",
    },
    lightbulb = {
      enable = true,
      sign = true,
      virtual_text = true,
    },
    symbol_in_winbar = {
      enable = true,
      separator = "  ",
      hide_keyword = true,
      show_file = true,
      folder_level = 2,
    },
  })
end