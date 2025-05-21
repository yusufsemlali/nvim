vim.g.base46_cache = vim.fn.stdpath "data" .. "/base46/"
vim.g.mapleader = " "
vim.opt.clipboard = 'unnamedplus'  -- Use the system clipboard

-- Set relative line numbers
vim.opt.relativenumber = true
-- Set relative window
vim.o.scrolloff = 999




-- bootstrap lazy and all plugins
local lazypath = vim.fn.stdpath "data" .. "/lazy/lazy.nvim"

if not vim.uv.fs_stat(lazypath) then
  local repo = "https://github.com/folke/lazy.nvim.git"
  vim.fn.system { "git", "clone", "--filter=blob:none", repo, "--branch=stable", lazypath }
end

vim.opt.rtp:prepend(lazypath)

local lazy_config = require "configs.lazy"

require("lazy").setup({
  {
    "NvChad/NvChad",
    lazy = false,
    branch = "v2.5",
    import = "nvchad.plugins",
  },
  {"Pocco81/auto-save.nvim", lazy = false},
  {"tpope/vim-surround", lazy = false},
  { import = "plugins" },
}, lazy_config)







-- load theme
dofile(vim.g.base46_cache .. "defaults")
dofile(vim.g.base46_cache .. "statusline")


vim.g.NERDTreeIgnore = { '\\.o$', '\\.so$', '\\~$', '\\.bak$' }
require('telescope').setup {
    defaults = {
        file_ignore_patterns = { "%.o$" },  -- Ignore .o files
    },
}
require('nvim-tree').setup {
    filters = {
        custom = { '\\.o$', '\\.so$', '\\~$', '\\.bak$' },
    },
}


-- In init.lua or custom config file
vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { noremap = true, silent = true })

require "options"
require "nvchad.autocmds"

vim.schedule(function()
  require "mappings"
end)
