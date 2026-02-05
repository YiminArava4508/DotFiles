return {
  "karb94/neoscroll.nvim",
  event = "VeryLazy",
  config = function()
    require("neoscroll").setup({
      -- You can leave this empty or customize
      easing_function = "quadratic", -- or nil
    })

    local t = {}
    t["<C-u>"] = { "scroll", { "-vim.wo.scroll", "true", "250" } }
    t["<C-d>"] = { "scroll", { "vim.wo.scroll", "true", "250" } }
    t["<C-b>"] = { "scroll", { "-vim.api.nvim_win_get_height(0)", "true", "450" } }
    t["<C-f>"] = { "scroll", { "vim.api.nvim_win_get_height(0)", "true", "450" } }
    t["<C-y>"] = { "scroll", { "-0.10", "false", "100" } }
    t["<C-e>"] = { "scroll", { "0.10", "false", "100" } }

    require("neoscroll.config").set_mappings(t)
  end,
}
