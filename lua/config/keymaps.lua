-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local Util = require("lazyvim.util")
local map = Util.safe_keymap_set

map("n", "<leader>gg", ":G<cr>", { desc = "Open fugitive" })
map("n", "<leader>gG", ":G<cr>", { desc = "Open fugitive" })
