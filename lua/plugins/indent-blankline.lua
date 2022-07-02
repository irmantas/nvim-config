local status_ok, indent_bline = pcall(require, "indent_blankline")
if not status_ok then
    print("Indent blankline plugin not loaded")
    return
end

vim.opt.list = true
vim.opt.listchars:append("space:⋅")
vim.opt.listchars:append("eol:↴")

indent_bline.setup {
    show_end_of_line = true,
    space_char_blankline = " ",
    show_current_context = true,
    show_current_context_start = true,
}
