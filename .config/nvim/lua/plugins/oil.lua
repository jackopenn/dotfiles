return {
  'stevearc/oil.nvim',
  -- Optional dependencies
  dependencies = { { "nvim-mini/mini.icons", opts = {} } },
  -- dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if you prefer nvim-web-devicons
  -- Lazy loading is not recommended because it is very tricky to make it work correctly in all situations.
  lazy = false,
  opts = {
        vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "open parent directory" }),
        skip_confirm_for_simple_edits = true,
        delete_to_trash = true,
    },
}
