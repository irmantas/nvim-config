local status_ok, lualine = pcall(require, "lualine")
if not status_ok then
    print("Lualine is not loaded")
    return
end

lualine.setup {
    options = { theme = 'gruvbox' }
}
