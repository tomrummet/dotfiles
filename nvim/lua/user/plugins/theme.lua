return {
    "catppuccin/nvim",
    lazy = false,
    priority = 1000,
    config = function()
        require("catppuccin").setup({
            flavour = "mocha",
            transparent_background = true,
            styles = {
                keywords = { 'italic' },
            },
            custom_highlights = function(colors)
                local prompt = colors.surface0

                return {
                    TelescopeBorder = {
                       bg = prompt,
                       fg = colors.surface0,
                    },
                    TelescopeNormal = {
                        bg = prompt
                    },
                    TelescopePromptNormal = {
                        bg = colors.surface1
                    },
                    TelescopePromptBorder = {
                        bg = colors.surface1,
                        fg = colors.surface1
                    },
                    TelescopePromptTitle = {
                        bg = colors.surface1,
                        fg = colors.text
                    },
                    NvimTreeOpenedFile = {
                        bg = colors.pink,
                        bold = true
                    }
                }
            end,
        })

        vim.cmd.colorscheme "catppuccin"
    end,

}
