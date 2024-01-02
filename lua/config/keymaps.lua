-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local Util = require("lazyvim.util")
local map = Util.safe_keymap_set
local neogit = require("neogit")

map("n", "<leader>gg", function()
  neogit.open()
end, { desc = "Open neogit" })
map("n", "<leader>gG", function()
  neogit.open()
end, { desc = "Open neogit" })
