-- OPTIONS

-- Color scheme
vim.opt.termguicolors = true
vim.cmd 'colorscheme gruvbox-baby'

-- Clipboard (see :checkhealth for required and available clipboard managers)
vim.opt.clipboard = "unnamedplus"

-- Number display
vim.opt.number = true

-- Relative number
vim.opt.relativenumber = true

-- TODO tab size
-- tab size
vim.opt.tabstop = 4
-- expand tab to spaces
vim.opt.expandtab = true
-- length tu use whern shifting text (0 for tabstop)
vim.opt.shiftwidth = 0
-- smart indentation for code block start
vim.opt.smartindent = true

-- AUTO COMMANDS

-- Disable automatic comment leader after 'o' or 'O'
-- requires autocommand because default runtime ftplugin overides it
vim.api.nvim_create_autocmd("BufEnter", {
    callback = function() 
        vim.opt.formatoptions = vim.opt.formatoptions - { "o" }
    end,
})
