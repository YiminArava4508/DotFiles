-- bootstrap lazy.nvim, LazyVim and your plugins
-- 1) Set leaders *first* (must be before any require that defines mappings/plugins)
vim.g.mapleader = " "
vim.g.maplocalleader = " "
require("config.lazy")
