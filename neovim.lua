return {
    {
        "bjarneo/aether.nvim",
        name = "aether",
        priority = 1000,
        opts = {
            disable_italics = false,
            colors = {
                -- Monotone shades (base00-base07)
                base00 = "#0d0d0d", -- Default background
                base01 = "#920000", -- Lighter background (status bars)
                base02 = "#0d0d0d", -- Selection background
                base03 = "#920000", -- Comments, invisibles
                base04 = "#ebe9ec", -- Dark foreground
                base05 = "#c3c3c3", -- Default foreground
                base06 = "#c3c3c3", -- Light foreground
                base07 = "#ebe9ec", -- Light background

                -- Accent colors (base08-base0F)
                base08 = "#ac4141", -- Variables, errors, red
                base09 = "#c75959", -- Integers, constants, orange
                base0A = "#acac41", -- Classes, types, yellow
                base0B = "#41ac41", -- Strings, green
                base0C = "#41acac", -- Support, regex, cyan
                base0D = "#b60025", -- Functions, keywords, blue
                base0E = "#ac41ac", -- Keywords, storage, magenta
                base0F = "#c7c759", -- Deprecated, brown/yellow
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
