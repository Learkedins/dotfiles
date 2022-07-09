local present, nord = pcall(require, "nord")
if not present then
    return
end

local globs = {
    nord_contrast = false,
    nord_borders = false,
    nord_disable_background = false,
    nord_italic = true,
}

for k,v in ipairs(globs) do
    vim.g[k] = v
end

