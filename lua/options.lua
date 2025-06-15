require "nvchad.options"

-- add yours here!
local o = vim.o

-- UI Enhancements
o.number = true                        -- Hide absolute line numbers
o.relativenumber = true                -- Hide relative line numbers
o.cursorline = true                      -- highlight current line
o.mouse = "a"                            -- enable mouse support
o.clipboard = "unnamedplus"                -- use system clipboard
o.termguicolors = true                   -- enable true color support


-- Optional (for better UI)
o.signcolumn = "yes"                     -- always show sign column. 
o.foldmethod = "expr"          -- Use expression for folding
o.foldexpr = "nvim_treesitter#foldexpr()" -- Use Treesitter for folding
o.foldcolumn = "0"            -- Show fold column like VSCode
o.foldlevel = 99              -- Open most folds by default
o.foldlevelstart = 99
o.foldenable = true           -- Enable folding
o.foldtext = "v:lua.custom_fold_text()"



function _G.custom_fold_text()
  local line = vim.fn.getline(vim.v.foldstart)
  local lines_count = vim.v.foldend - vim.v.foldstart + 1
  local icon = ""  -- Nerd Font icon, change it as you like (e.g. , , )

  return string.format(" %s  %s  ...  [%d lines]", icon, line, lines_count)
end
