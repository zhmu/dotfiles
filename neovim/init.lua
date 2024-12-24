-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- optionally enable 24-bit colour
vim.opt.termguicolors = true

-- empty setup using defaults
require("nvim-tree").setup()

-- OR setup with some options
require("nvim-tree").setup({
  sort = {
    sorter = "case_sensitive",
  },
  view = {
    width = 30,
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})

require('feline').setup()
require('mini.trailspace').setup()
require('illuminate').configure({
    delay = 0,
    under_cursor = false
})

require 'nvim-treesitter.configs'.setup {
    ensure_installed = { "c", "cpp", "lua", "rust" },
    sync_install = false,
    highlight = {
        enable = true
    }
}


-- require 'mini.indentscope'.setup {
--     options = {
--         border = 'both'
--     }
-- }
--
require("ibl").setup()
