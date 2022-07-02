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
    -- File explorer
    use 'kyazdani42/nvim-tree.lua'
    -- Telescope for file finging
    use {
        'nvim-telescope/telescope.nvim',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }
    -- LSP
    use {
        'williamboman/nvim-lsp-installer',
        'neovim/nvim-lspconfig',
    }
    -- Autocompletition
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    use 'hrsh7th/nvim-cmp'

    -- Snippet engine with cmp support
    use 'L3MON4D3/LuaSnip'
    use 'saadparwaiz1/cmp_luasnip'

    -- Autopairing brackets
    use 'windwp/nvim-autopairs'

    -- Git status indicator
    use 'lewis6991/gitsigns.nvim'

    -- Comments plugin with treesitter support
    use 'numToStr/Comment.nvim'

    -- Editorconfig file support
    use 'gpanders/editorconfig.nvim'
    --< Editor behaviour

    --> Color Schemes
    use 'luisiacc/gruvbox-baby'
    --< Color Schemes
end)
