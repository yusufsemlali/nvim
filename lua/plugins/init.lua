return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require   "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {"neovim/nvim-lspconfig",config = function()require "configs.lspconfig"end,},
  {"Pocco81/auto-save.nvim", lazy = false},
  {"mg979/vim-visual-multi",branch = "master",lazy = false,
    config = function()
      vim.g.VM_maps = {
        ["Find Under"]         = "<C-d>",
        ["Find Subword Under"] = "<C-d>",
        ["Select All"]         = "<Leader>A",
        ["Add Cursor Down"]    = "<C-Down>",
        ["Add Cursor Up"]      = "<C-Up>",
  }end,}

  -- {
  -- 	"nvim-treesitter/nvim-treesitter",
  -- 	opts = {
  -- 		ensure_installed = {
  -- 			"vim", "lua", "vimdoc",
  --      "html", "css"
  -- 		},
  -- 	},
  -- },
}
