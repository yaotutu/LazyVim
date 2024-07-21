return {
    "hrsh7th/nvim-cmp",
    opts = function(_, opts)
        local cmp = require("cmp")
        print("Loading cmp custom mappings")
        opts.mapping = cmp.mapping.preset.insert({
            ["<C-j>"] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Insert }),
            ["<C-k>"] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Insert }),
            -- ["<C-b>"] = cmp.mapping.scroll_docs(-4),
            -- ["<C-f>"] = cmp.mapping.scroll_docs(4),
            ["<C-.>"] = cmp.mapping.complete(),
            ["<C-b>"] = cmp.mapping.complete(),
            ["<C-e>"] = cmp.mapping.abort(),
            ["<CR>"] = cmp.mapping.confirm({ select = false }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
            ["<S-CR>"] = cmp.mapping.confirm({
                behavior = cmp.ConfirmBehavior.Replace,
                select = true,
            }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
        })
    end
}
