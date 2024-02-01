-- Bootstrap Lazy
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    {
        "folke/tokyonight.nvim",
        lazy = false,
        priority = 1000,
        opts = {},
        config = function()
            vim.cmd[[colorscheme tokyonight-moon]]
        end,
    },

    "tpope/vim-commentary", -- Commenting support -- Commenting support

    -- Autopairing quotes, brackets...
    {
        'windwp/nvim-autopairs',
        config = function()
            require('nvim-autopairs').setup()
        end,
    },

    {
        'AndrewRadev/splitjoin.vim',
        config = function()
            vim.g.splitjoin_html_attributes_bracket_on_new_line = 1
            vim.g.splitjoin_trailing_comma = 1
            vim.g.splitjoin_php_method_chain_full = 1
        end,
    },

    -- Status line
    { import = 'user.plugins.lualine' },

    -- Fuzzy finder
    { import = 'user.plugins.telescope' },

    -- File tree sidebar
    { import = 'user.plugins.neo-tree' },
}, {
  checker = {
    enabled = true,
    notify = false,
  },
  change_detection = {
    notify = true,

  },

  install = {
    colorscheme = { "tokyonight", "habamax" },
  },
})
