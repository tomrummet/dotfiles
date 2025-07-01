return {
    "nvzone/floaterm",
    dependencies = "nvzone/volt",
    lazy = false,
    opts = {},
    keys = {
        { '<F1>', ':FloatermToggle<CR>' },
        { '<F1>', '<C-\\><C-n>:FloatermToggle<CR>', mode = 't' },
    },
    cmd = "FloatermToggle",
}
