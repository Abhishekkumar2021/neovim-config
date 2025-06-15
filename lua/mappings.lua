require "nvchad.mappings"

-- add yours here
local map = vim.keymap.set

-- Codeium (AI suggestions)
map("i", "<C-l>", function()
  return vim.fn["codeium#Accept"]()
end, { expr = true, silent = true, desc = "Codeium Accept" })

map("i", "<C-k>", function()
  return vim.fn["codeium#CycleCompletions"](-1)
end, { expr = true, silent = true, desc = "Codeium Previous" })

map("i", "<C-x>", function()
  return vim.fn["codeium#Clear"]()
end, { expr = true, silent = true, desc = "Codeium Clear" })

map("i", "<C-j>", function()
  return vim.fn["codeium#CycleCompletions"](1)
end, { expr = true, silent = true, desc = "Codeium Next" })
-- Folding shortcuts
map("n", "zR", "zR", { desc = "Open all folds" })
map("n", "zM", "zM", { desc = "Close all folds" })
map("n", "za", "za", { desc = "Toggle fold" })
map("n", "zc", "zc", { desc = "Close fold" })
map("n", "zo", "zo", { desc = "Open fold" })
map("t", "<Esc>", [[<C-\><C-n>]], { noremap = true }) -- Escape terminal mode