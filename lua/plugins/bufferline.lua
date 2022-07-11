local status_ok, bufferline = pcall(require, 'bufferline')
if not status_ok then
    print("bufferline is not installe")
    return
end

bufferline.setup{

}
