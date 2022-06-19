-- OPTIONS

-- Clipboard (see :checkhealth for required and available clipboard managers)
vim.opt.clipboard = "unnamedplus"

-- Number display
vim.opt.number = true

-- Relative number
vim.opt.relativenumber = true

-- TODO tab size

-- AUTO COMMANDS

-- Disable automatic comment leader after 'o' or 'O'
-- requires autocommand because default runtime ftplugin overides it
vim.api.nvim_create_autocmd("BufEnter", {
    callback = function() 
        vim.opt.formatoptions = vim.opt.formatoptions - { "o" }
    end,
})
