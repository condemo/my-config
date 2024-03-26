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
  { noremap = true, silent = true, desc = "Go to Neorg index in current workspace" }
)

-- Customization
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")
vim.keymap.set("n", "<leader>p", '"_dP', { desc = "Paste without losing current buffer" })
vim.keymap.set("n", "<leader>y", '"+y', { desc = "Copy to clipborad" })
vim.keymap.set("v", "<leader>y", '"+y', { desc = "Copy to clipborad, visual mode" })
vim.keymap.set("n", "<leader>Y", '"+Y', { desc = "Copy to clipborad" })
