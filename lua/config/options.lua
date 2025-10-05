-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- Line numbers
vim.opt.relativenumber = true  -- Show relative line numbers

-- Scrolling
vim.opt.scrolloff = 8          -- Keep 8 lines visible above/below cursor
vim.opt.sidescrolloff = 8      -- Keep 8 columns visible left/right

-- Indentation
vim.opt.tabstop = 2            -- 2 spaces per tab
vim.opt.shiftwidth = 2         -- 2 spaces for auto-indent
vim.opt.expandtab = true       -- Use spaces instead of tabs

-- Search
vim.opt.ignorecase = true      -- Case-insensitive search
vim.opt.smartcase = true       -- Case-sensitive if uppercase used

-- UI
vim.opt.cursorline = true      -- Highlight current line
vim.opt.signcolumn = "yes"     -- Always show sign column

-- Clipboard
vim.opt.clipboard = "unnamedplus"  -- Use system clipboard

-- Performance
vim.opt.updatetime = 300        -- Faster completion
