return {
  {
    "LazyVim/LazyVim",
    opts = function()
      vim.api.nvim_create_autocmd("FileType", {
        pattern = { "markdown", "markdown_inline" },
        callback = function()
          vim.opt_local.spell = false
        end,
      })
    end,
  },
}
