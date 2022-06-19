vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])

local status_ok, packer = pcall(require, "packer")
if not status_ok then
    return
end

packer.init {
    display = {
        open_fn = function()
	    return require("packer.util").float { border = "rounded" }
	end,
    },
}

return require('packer').startup(function(use)
    -- self manage Packer
    use 'wbthomason/packer.nvim'

    -- Global requirements
    use 'nvim-lua/plenary.nvim'

    -- TreeSitter
    use {
        'nvim-treesitter/nvim-treesitter',
	    run = ':TSUpdate'
    }

    -- Editorconfig file support
    use 'gpanders/editorconfig.nvim'

    -- Color Schemes
    use 'luisiacc/gruvbox-baby'
end)
