local status_ok, indent_o_matic = pcall(require, 'indent-o-matic')
if not status_ok then
    print("indent_o_matic is not loaded")
    return
end

indent_o_matic.setup {

}
