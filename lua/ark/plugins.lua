-- Install packer plugin on plugins.lua file save
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])

-- safe call
local status_ok, packer = pcall(require, "packer")
if not status_ok then
    return
end

-- configure floating window for plugin install/update statuks
packer.init {
    display = {
        open_fn = function()
	    return require("packer.util").float { border = "rounded" }
	end,
    },
}

-- all plugins goes here
return require('packer').startup(function(use)
    --> Plugin manager
    -- self manage Packer
    use 'wbthomason/packer.nvim'
    --< Plugin manager

    --> Global requirements
    -- base (used by many plugins) floating windows and other decor
    use 'nvim-lua/plenary.nvim'
    -- icons from patched Nerd fonts (used by many plugins)
    use 'kyazdani42/nvim-web-devicons'
    --< Global requirements

    --> Editor behaviour
    -- TreeSitter syntax highlighting
    use {
        'nvim-treesitter/nvim-treesitter',
	    run = ':TSUpdate'
    }
    -- Editorconfig file support
    use 'gpanders/editorconfig.nvim'
    --< Editor behaviour

    --> Color Schemes
    use 'luisiacc/gruvbox-baby'
    --< Color Schemes
end)
