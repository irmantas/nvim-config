local status_ok, lsp_installer = pcall(require, "nvim-lsp-installer")
if not status_ok then
    print 'Lsp installer not loaded'
    return
end


local servers_config = require 'plugins.lsp.servers';

lsp_installer.setup {
    ensure_installed = servers_config.servers,
    ui = {
        icons = {
            server_installed = "✓",
            server_pending = "➜",
            server_uninstalled = "✗"
        }
    }
}

local status_ok, lspconfig = pcall(require, "lspconfig")
if not status_ok then
    print 'Lsp config not loaded'
    return
end


for _, server in pairs(servers_config.servers) do
    local opts = {
        on_attach = servers_config.on_attach,
        -- capabilities = servers_config.capabilities,
        flags = servers_config.lsp_flags,
    }
    local has_custom_opts, server_custom_opts = pcall(require, "plugins.lsp.ls_config." .. server)
    if has_custom_opts then
        opts = vim.tbl_deep_extend("force", server_custom_opts, opts)
    end
    lspconfig[server].setup(opts)
end
