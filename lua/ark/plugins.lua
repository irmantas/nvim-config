vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])

return require('packer').startup(function()
    -- self manage Packer
    use 'wbthomason/packer.nvim'

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
