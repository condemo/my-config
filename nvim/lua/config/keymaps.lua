-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set(
  "n",
  "<leader>sx",
  require("telescope.builtin").resume,
  { noremap = true, silent = true, desc = "Resume" }
)

-- Neorg Keybindings
vim.keymap.set(
  "n",
  "<leader>or",
  "<cmd>Neorg return<cr>",
  { noremap = true, silent = true, desc = "Return from Neorg" }
)
vim.keymap.set(
  "n",
  "<leader>ow",
  "<cmd>Neorg workspace<cr>",
  { noremap = true, silent = true, desc = "Go to Neorg default workspace" }
)
vim.keymap.set(
  "n",
  "<leader>oi",
  "<cmd>Neorg index<cr>",
  { noremap = true, silent = true, desc = "Go to neorg index in current workspace" }
)
