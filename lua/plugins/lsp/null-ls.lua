local status_ok, null_ls = pcall(require, 'null-ls')
if not status_ok then
    print("Null LS not loaded")
    return
end

null_ls.setup {
    sources = {
        null_ls.builtins.code_actions.xo,
        null_ls.builtins.diagnostics.eslint,
        --         null_ls.builtins.diagnostics.codespell,
        null_ls.builtins.diagnostics.jsonlint,
        null_ls.builtins.diagnostics.php,
        null_ls.builtins.diagnostics.shellcheck,
        null_ls.builtins.diagnostics.xo,
        null_ls.builtins.diagnostics.zsh,
        null_ls.builtins.formatting.black,
        null_ls.builtins.formatting.deno_fmt,
        null_ls.builtins.formatting.fixjson,
        null_ls.builtins.formatting.stylua,
        null_ls.builtins.formatting.lua_format,
        null_ls.builtins.formatting.phpcsfixer,
        null_ls.builtins.formatting.rustfmt,
        null_ls.builtins.formatting.taplo,
    }
}
