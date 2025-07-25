vim.g.base46_cache = vim.fn.stdpath "data" .. "/base46/"
vim.g.mapleader = " "
vim.opt.clipboard = 'unnamedplus'  -- Use the system clipboard


-- Set relative line numbers
vim.opt.relativenumber = true
-- Set relative window 
vim.o.scrolloff = 999
-- Disable line wrapping
vim.opt.wrap = false




-- bootstrap lazy and all plugins
local lazypath = vim.fn.stdpath "data" .. "/lazy/lazy.nvim"

if not vim.uv.fs_stat(lazypath) then
  local repo = "https://github.com/folke/lazy.nvim.git"
  vim.fn.system { "git", "clone", "--filter=blob:none", repo, "--branch=stable", lazypath }
end

vim.opt.rtp:prepend(lazypath)

local lazy_config = require "configs.lazy"

-- load plugins
require("lazy").setup({
  {"NvChad/NvChad", lazy = false, branch = "v2.5", import = "nvchad.plugins",},
  { import = "plugins" },
}, lazy_config)


-- Add custom themes directory to runtime path
vim.opt.rtp:append(vim.fn.stdpath("config") .. "/lua/themes")

-- load theme
dofile(vim.g.base46_cache .. "defaults")
dofile(vim.g.base46_cache .. "statusline")

require "options"
require "nvchad.autocmds"

vim.schedule(function()
  require "mappings"
end)
