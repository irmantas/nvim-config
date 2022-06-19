-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- default options
local opts = { noremap = true, silent = true }

-- shorten function
local keymap = vim.api.nvim_set_keymap

-- Remap leader to ;
keymap("", ";", "<Nop>", opts)
vim.g.mapleader = ";"
vim.g.maplocalleader = ";"

-- Esc
keymap("i", "<leader>;", "<Esc>", opts)

-- Navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)

--> PLUGINS

--< PLUGINS

-- Disable arrow keys
keymap("", "<Up>", "<Nop>", opts)
keymap("", "<Left>", "<Nop>", opts)
keymap("", "<Right>", "<Nop>", opts)
keymap("", "<Down>", "<Nop>", opts)
