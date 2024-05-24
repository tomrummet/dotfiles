return {
    'mfussenegger/nvim-dap',

    dependencies = {
        "mason.nvim",
        'jay-babu/mason-nvim-dap.nvim',
        'rcarriga/nvim-dap-ui',
        'nvim-neotest/nvim-nio'
    },
    cmd = { "DapInstall", "DapUninstall" },
    config = function()
        local dap = require('dap')
        local dapui = require('dapui')

        dap.listeners.before.attach.dapui_config = function()
            dapui.open()
        end
        dap.listeners.before.launch.dapui_config = function()
            dapui.open()
        end
        dap.listeners.before.event_terminated.dapui_config = function()
            dapui.close()
        end
        dap.listeners.before.event_exited.dapui_config = function()
            dapui.close()
        end

        vim.keymap.set('n', '<F5>', function() dap.continue() end)
        vim.keymap.set('n', '<F10>', function() dap.step_over() end)
        vim.keymap.set('n', '<F11>', function() dap.step_into() end)
        vim.keymap.set('n', '<F12>', function() dap.step_out() end)
        vim.keymap.set('n', '<Leader>db', function() dap.toggle_breakpoint() end)
        vim.keymap.set('n', '<Leader>dB', function() dap.set_breakpoint() end)

    end,
    opts = {
        -- Makes a best effort to setup the various debuggers with
        -- reasonable debug configurations
        automatic_installation = true,

        -- You can provide additional configuration to the handlers,
        -- see mason-nvim-dap README for more information
        handlers = {},

        -- You'll need to check that you have the required things installed
        -- online, please don't ask me how to install them :)
        ensure_installed = {
            -- Update this to ensure that you have the debuggers for the langs you want
        },
    },
}
