return {
    {
        "bjarneo/aether.nvim",
        name = "aether",
        priority = 1000,
        opts = {
            disable_italics = false,
            colors = {
                -- Monotone shades (base00-base07)
                base00 = "#151515", -- Default background
                base01 = "#c7c5c5", -- Lighter background (status bars)
                base02 = "#151515", -- Selection background
                base03 = "#c7c5c5", -- Comments, invisibles
                base04 = "#E1DEDE", -- Dark foreground
                base05 = "#edecec", -- Default foreground
                base06 = "#edecec", -- Light foreground
                base07 = "#E1DEDE", -- Light background

                -- Accent colors (base08-base0F)
                base08 = "#9a8e8e", -- Variables, errors, red
                base09 = "#c6bebe", -- Integers, constants, orange
                base0A = "#9d9393", -- Classes, types, yellow
                base0B = "#a19696", -- Strings, green
                base0C = "#c9c3c3", -- Support, regex, cyan
                base0D = "#aca3a3", -- Functions, keywords, blue
                base0E = "#bab3b3", -- Keywords, storage, magenta
                base0F = "#b5aeae", -- Deprecated, brown/yellow
            },
        },
        config = function(_, opts)
            require("aether").setup(opts)
            vim.cmd.colorscheme("aether")

            -- Enable hot reload
            require("aether.hotreload").setup()
        end,
    },
    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "aether",
        },
    },
}
