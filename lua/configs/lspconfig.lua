require("nvchad.configs.lspconfig").defaults()

local servers = {
  "html",
  "cssls",
  "pyright",
  "lua_ls",
  "clangd",
  "ts_ls",  
  "jsonls",
  "bashls",
  "tailwindcss",     -- include tailwindcss
  "prismals",        -- include prisma
  "gopls",         -- include gopls
  "marksman",        -- Markdown language server
}

vim.lsp.enable(servers)

-- read :h vim.lsp.config for changing options of lsp servers 
