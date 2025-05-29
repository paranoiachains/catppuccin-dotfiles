vim.o.number = true               
vim.o.relativenumber = true       
vim.o.mouse = 'a'                  
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true            

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git", "clone", "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    { 
        "catppuccin/nvim",
        name = "catppuccin", 
        priority = 1000,
        config = function()
            require ("catppuccin").setup({
                flavour = "mocha",
                transparent_background = false,
            })
            vim.cmd.colorscheme("catppuccin")
        end,
    },
})
