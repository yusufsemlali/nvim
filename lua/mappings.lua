require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- Set Ctrl j to accept Copilot suggestions
vim.api.nvim_set_keymap('i', '<C-j>', 'copilot#Accept("<CR>")', {expr = true, silent = true})

-- Set the new mapping for <Leader>h to run Stdheader in insert mode
vim.api.nvim_set_keymap('i', '<Leader>h', '<Esc>:Stdheader<CR>:w<CR>a', { noremap = true, silent = true })

-- Set the new mapping for <Leader>h to run Stdheader in normal mode
vim.api.nvim_set_keymap('n', '<Leader>h', ':Stdheader<CR>:w<CR>', { noremap = true, silent = true })

-- Map 'n' in Visual mode to select till the end of the line excluding the newline
vim.api.nvim_set_keymap('v', 'n', '$', { noremap = true, silent = true })



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
