-- OPTIONS

--> Color scheme
vim.opt.termguicolors = true
vim.cmd 'colorscheme gruvbox-baby'
--< Color scheme

--> Base options
-- Don't create swp files
vim.opt.backup = false
-- Command line height for more space for messages
vim.opt.cmdheight = 2
-- File encoding
vim.opt.fileencoding = "utf-8"
-- Enable mouse support
vim.opt.mouse = "a"
-- show editor tabs (opened files)
vim.opt.showtabline = 2
-- highlight cursor line
vim.opt.cursorline = true
-- text scrolling offset
vim.opt.scrolloff = 8
-- do not wrap lines
vim.opt.wrap = false
-- global status line
vim.opt.laststatus = 3
--< Base options

--> Searching
-- highlight all matches on previous search
vim.opt.hlsearch = true
vim.opt.ignorecase = true
--< Searching

--> Clipboard (see :checkhealth for required and available clipboard managers)
vim.opt.clipboard = "unnamedplus"
--< Clipboard

--> Line numbers
-- Display numbers 
vim.opt.number = true
-- Relative number
vim.opt.relativenumber = true
--< Line numbers

--> Indentation
-- tab size
vim.opt.tabstop = 4
-- expand tab to spaces
vim.opt.expandtab = true
-- length tu use whern shifting text (0 for tabstop)
vim.opt.shiftwidth = 0
-- smart indentation for code block start
vim.opt.smartindent = true
-- TODO tab size by filetype (with autocmd's based by file type)
--< Indentation

--> AUTO COMMANDS
-- Disable automatic comment leader after 'o' or 'O'
-- requires autocommand because default runtime ftplugin overides it
vim.api.nvim_create_autocmd("BufEnter", {
    callback = function() 
        vim.opt.formatoptions = vim.opt.formatoptions - { "o" }
    end,
})
--< AUTO COMMANDS
