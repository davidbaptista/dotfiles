vim.o.termguicolors = true

vim.g.gruvbox_material_background = "hard" -- dark contrast: "hard", "medium", "soft"
vim.g.gruvbox_material_foreground = "original" -- use the original gruvbox palette

vim.cmd([[colorscheme gruvbox-material]])

-- Remove LazyVim's default mapping
vim.keymap.del("n", "<leader>e")

-- Make <leader>e behave like <leader>E (cwd)
vim.keymap.set("n", "<leader>e", function()
  Snacks.explorer.open({ root = false })
end, { desc = "Explorer (cwd)" })
