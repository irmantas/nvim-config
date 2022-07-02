local status_ok, autopairs = pcall(require, 'nvim-autopairs')
if not status_ok then
    print 'Autopairs not loaded'
    return
end

autopairs.setup {
    disable_filetype = { "TelescopePrompt" },
    check_ts = true,
    ts_config = {
        lua = { "string", "source" },
        javascript = { "string", "template_string" },
    },
    enable_check_bracket_line = false,
    fast_wrap = {},
}
