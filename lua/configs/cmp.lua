local cmp = require "cmp"

cmp.setup({
  sources = {
    { name = "codeium" }, -- 👈 Add this line
    { name = "nvim_lsp" },
    { name = "luasnip" },
    { name = "buffer" },
    { name = "path" },
  },
})