local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
    packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

local present, packer = pcall(require, "packer")
if not present then
    return
end

vim.cmd([[
augroup packer_user_config
autocmd!
autocmd BufWritePost plug.lua source <afile> | PackerSync
augroup end
]])

return packer.startup({function(use)
    -- essen
    use "wbthomason/packer.nvim" 
    use "shaunsingh/nord.nvim"
    use "nvim-treesitter/nvim-treesitter"

    -- Misc
    use "nvim-lualine/lualine.nvim"
    use "akinsho/bufferline.nvim"
    use "kyazdani42/nvim-web-devicons"
end,
config = {
    display = {
        open_fn = function()
            return require('packer.util').float({ border = 'single' })
        end
    }
}})
