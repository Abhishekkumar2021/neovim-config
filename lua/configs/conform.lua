local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    python = { "black" },
    c = { "clang-format" },
    cpp = { "clang-format" },
    go = { "gofumpt" },
    sh = { "shfmt" },
    bash = { "shfmt" },

    javascript = { "prettier" },
    typescript = { "prettier" },
    javascriptreact = { "prettier" },
    typescriptreact = { "prettier" },
    json = { "prettier" },
    yaml = { "prettier" },
    markdown = { "prettier" },
    html = { "prettier" },
    css = { "prettier" },

    -- Optional: format plaintext files with prettier or none
    text = {}, -- disables formatting for plain text
  },

  format_on_save = {
    timeout_ms = 500,
    lsp_fallback = true, -- fallback to LSP if formatter is missing
  },

  -- Optional: disable format on specific filetypes
  -- disable_formatting_for_ft = { "toml", "text" },
}

return options