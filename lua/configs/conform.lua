-- ~/.config/nvim/lua/custom/configs/conform.lua

local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    typescript = { "prettier" },
    typescriptreact = { "prettier" },
    javascript = { "prettier" },
    javascriptreact = { "prettier" },
    json = { "prettier" },
    html = { "prettier" },
    css = { "prettier" },
    cpp = { "clang-format" },
    c = { "clang-format" },
  },

  -- format_on_save = {
  --   timeout_ms = 500,
  --   lsp_fallback = true,
  -- },
}

return options
