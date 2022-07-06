local options = {
    number = true,
    relativenumber = true,
    tabstop = 4,
    softtabstop = 4,
    expandtab = true,
    shiftwidth = 4,
    laststatus = 3,
    termguicolors = true,
    cul = true,
    wrap = false,
    hlsearch = false,
    guicursor = "",
}

for k,v in pairs(options) do
    vim.opt[k] = v
end
