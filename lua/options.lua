require "nvchad.options"

-- add yours here!

-- local o = vim.o
-- o.cursorlineopt ='both' -- to enable cursorline!

require('telescope').setup {
  defaults = {
    file_ignore_patterns = {
      "%.o$",  -- Exclude object files
      "%.d$",  -- Exclude dependency files
    },
  },
}


-- WSL Yank Support
local clip_path = "/mnt/c/Windows/System32/clip.exe" -- Update this path if needed

if vim.fn.executable(clip_path) == 1 then
    vim.api.nvim_create_augroup("WSLYank", { clear = true })
    vim.api.nvim_create_autocmd("TextYankPost", {
        group = "WSLYank",
        callback = function()
            if vim.v.event.operator == "y" then
                vim.fn.system(clip_path, vim.fn.getreg('"')) -- Copy to clipboard
            end
        end,
    })
end

