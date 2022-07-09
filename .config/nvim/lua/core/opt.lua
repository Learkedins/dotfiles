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
}

-- For loop to simplify options
for k,v in pairs(options) do
    vim.opt[k] = v
end

-- Jump to last cursor position
vim.cmd[[autocmd BufReadPost * if @% !~# '\.git[\/\\]COMMIT_EDITMSG$' && line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif ]]

-- Transparency
vim.cmd[[highlight Normal guibg=NONE ctermbg=NONE]]

-- Try catch for colorscheme vim
vim.cmd [[
try
  colorscheme NeoSolarized
catch /^Vim\%((\a\+)\)\=:E185/
  colorscheme default
  set background=dark
endtry
]]
