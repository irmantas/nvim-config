local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
    print('LSP is not initialized')
    return
end

vim.diagnostic.config({virtual_text = false})

require 'plugins.lsp.lsp_installer'
require 'plugins.lsp.null-ls'
