require "nvchad.mappings"

-- add  custom mappings here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- Set Ctrl j to accept Copilot suggestions
vim.api.nvim_set_keymap('i', '<C-j>', 'copilot#Accept("<CR>")', {expr = true, silent = true})

-- Map 'n' in Visual mode to select till the end of the line excluding the newline
vim.api.nvim_set_keymap('v', 'n', '$', { noremap = true, silent = true })

-- ALT + SHIFT + F to manually format the current buffer using conform
vim.keymap.set("n", "<A-S-F>", function()
  require("conform").format({ lsp_fallback = true })
end, { desc = "Format file with Conform" })

-- 'civ' to replace the word under the cursor with clipboard content without overwriting the clipboard
vim.api.nvim_set_keymap('n', 'civ', '"_yiwviw"+p', { noremap = true, silent = true })

-- Replace the current line with the contents of the system clipboard without affecting other lines
vim.api.nvim_set_keymap('n', 'cil', '"_dd"+P', { noremap = true, silent = true })



local map = vim.keymap.set

map({ "n", "t" }, "<A-i>", function()
  require("nvchad.term").toggle {
    pos = "float",
    id = "floatTerm",
    float_opts = {
      border = "single",
      width = 30,
      height = 30,
      row = 0,
      col = 0,
    },
  }
end, { desc = "Terminal Toggle Floating term" })


-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
