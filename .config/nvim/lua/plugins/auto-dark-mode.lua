return {
    "f-person/auto-dark-mode.nvim",
    opts = {
        set_dark_mode = function()
		    vim.cmd("colorscheme rose-pine-moon")
        end,
        set_light_mode = function()
		    vim.cmd("colorscheme rose-pine-dawn")
        end,
        update_interval = 1000 * 60, -- 1 minute
    }
}
