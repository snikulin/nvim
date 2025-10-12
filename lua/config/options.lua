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
if vim.fn.has("wsl") == 1 then
  local has_clip = vim.fn.executable("clip.exe") == 1
  local has_powershell = vim.fn.executable("powershell.exe") == 1

  if has_clip and has_powershell then
    local powershell_paste = [=[powershell.exe -NoLogo -NoProfile -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r", ""))]=]
    vim.g.clipboard = {
      name = "WslClipboard",
      copy = {
        ["+"] = "clip.exe",
        ["*"] = "clip.exe",
      },
      paste = {
        ["+"] = powershell_paste,
        ["*"] = powershell_paste,
      },
      cache_enabled = 0,
    }
  end
end

-- Performance
vim.opt.updatetime = 300        -- Faster completion
