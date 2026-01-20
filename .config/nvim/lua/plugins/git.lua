return {
    {
        "tpope/vim-fugitive"
    },
    {
        "lewis6991/gitsigns.nvim",
        opts = {
            vim.keymap.set("n", "<leader>gp", ":Gitsigns preview_hunk<CR>")
        }
    }
}
