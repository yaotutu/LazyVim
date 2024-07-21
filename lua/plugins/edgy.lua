return {
    "folke/edgy.nvim",
    opts = function(_, opts)
        opts.bottom = {
            {
                ft = "toggleterm",
                size = { height = 0.2 },
                filter = function(buf, win)
                    return vim.api.nvim_win_get_config(win).relative == ""
                end,
            },
            {
                ft = "noice",
                size = { height = 0.2 },
                filter = function(buf, win)
                    return vim.api.nvim_win_get_config(win).relative == ""
                end,
            },
            {
                ft = "lazyterm",
                title = "LazyTerm",
                size = { height = 0.2 },
                filter = function(buf)
                    return not vim.b[buf].lazyterm_cmd
                end,
            },
            "Trouble",
            { ft = "qf",                title = "QuickFix" },
            {
                ft = "help",
                size = { height = 20 },
                -- don't open help files in edgy that we're editing
                filter = function(buf)
                    return vim.bo[buf].buftype == "help"
                end,
            },
            { title = "Spectre",        ft = "spectre_panel",        size = { height = 0.4 } },
            { title = "Neotest Output", ft = "neotest-output-panel", size = { height = 15 } },
        }
    end

}
