return {
  {
    "stevearc/conform.nvim",
    event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  -- Function signature popup
  {
    "ray-x/lsp_signature.nvim",
    config = function()
      require "configs.lsp_signature"
    end,
  },

  -- LSP popup UI improvements
  {
    "nvimdev/lspsaga.nvim",
    event = "LspAttach",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    config = function()
      require "configs.lspsaga"
    end,
  },

  -- Completion icons for cmp
  {
    "onsails/lspkind.nvim",
  },

  -- test new blink
  { import = "nvchad.blink.lazyspec" },

  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    }
  },

  -- Codeium plugin
  {
    "Exafunction/codeium.vim",
    event = "InsertEnter",
    config = function()
      vim.g.codeium_disable_bindings = 1
      vim.g.codeium_filetypes = {
        ["*"] = true,
      }
      vim.g.codeium_enabled = true
    end,
  },

  -- Treesitter configuration
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      highlight = { enable = true },
      indent = { enable = true },
      -- fold is handled by expr + foldexpr above
    }
  },

  {
    "laytan/tailwind-sorter.nvim",
    dependencies = { "nvim-treesitter/nvim-treesitter", "nvim-lua/plenary.nvim" },
    build = "cd formatter && npm install",
    config = true,
    ft = { "html", "css", "scss", "javascript", "javascriptreact", "typescript", "typescriptreact" },
  }
}
