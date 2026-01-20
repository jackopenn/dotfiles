vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.scrolloff = 10

vim.opt.wrap = false

vim.opt.title = true

vim.opt.splitright = true
vim.opt.splitbelow = true

vim.opt.tabstop = 4 -- A TAB character looks like 4 spaces
vim.opt.expandtab = true -- Pressing the TAB key will insert spaces instead of a TAB character
vim.opt.softtabstop = 4 -- Number of spaces inserted instead of a TAB character
vim.opt.shiftwidth = 4 -- Number of spaces inserted when indenting

vim.opt.updatetime = 50

vim.opt.termguicolors = true
vim.opt.showmode = false

vim.api.nvim_create_autocmd("FileType", {
    pattern = { "markdown", "text" },
    callback = function()
        vim.opt_local.wrap = true
        vim.opt_local.linebreak = true
    end,
})
