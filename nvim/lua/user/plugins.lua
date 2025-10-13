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
    -- Theme config
    { import = 'user.plugins.theme' },

    -- Commenting support -- Commenting support
    "tpope/vim-commentary",

    -- Autopairing quotes, brackets...
    { import = 'user.plugins.autopairs' },

    -- Splitjoin
    { import = 'user.plugins.splitjoin' },

    -- Status line
    { import = 'user.plugins.lualine' },

    -- Fuzzy finder
    { import = 'user.plugins.telescope' },

    -- File tree sidebar
    { import = 'user.plugins.neo-tree' },

    -- Display buffer as tabs
    { import = 'user.plugins.bufferline' },

    { import = 'user.plugins.indent-blankline' },

    -- Git integration
    { import = 'user.plugins.gitsigns' },

    -- FloaTerm
    -- { import = 'user.plugins.floaterm' },
    { import = 'user.plugins.nfloaterm' },

    -- Treesitter
    { import = 'user.plugins.treesitter' },

    -- Language Server Protocol.
    { import = 'user.plugins.lspconfig' },

    -- Completion
    { import = 'user.plugins.cmp' },

    -- PHP Refactoring Tools
    { import = 'user.plugins.phpactor' },

    -- Github Copilot
    -- { import = 'user.plugins.copilot' },

    -- Debug Apapter Protocol
    { import = 'user.plugins.dap' },
}, {
  checker = {
    enabled = true,
    notify = false,
  },
  change_detection = {
    notify = true,

  },

  install = {
    colorscheme = { "catppuccin-mocha", "tokyonight", "habamax" },
  }
})
