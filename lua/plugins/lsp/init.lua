local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
    print('LSP is not initialized')
    return
end

require 'plugins.lsp.lsp_installer'
