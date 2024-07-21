return {
    "nvim-neo-tree/neo-tree.nvim",
    opts = function(_, opts)
        -- 删除默认的快捷键
        opts.window.mappings["o"] = "none"
        opts.window.mappings["os"] = "none"
        opts.window.mappings["ot"] = "none"
        opts.window.mappings["oc"] = "none"
        opts.window.mappings["om"] = "none"
        opts.window.mappings["od"] = "none"
        opts.window.mappings["on"] = "none"
        opts.window.mappings["og"] = "none"
        opts.window.mappings["o"] = "open"
        --  更改默认的快捷键
        opts.window.mappings["b"] = { "show_help", nowait = false, config = { title = "Order by", prefix_key = "b" } }
        opts.window.mappings["bc"] = { "order_by_created", nowait = false }
        opts.window.mappings["bd"] = { "order_by_diagnostics", nowait = false }
        opts.window.mappings["bm"] = { "order_by_modified", nowait = false }
        opts.window.mappings["bn"] = { "order_by_name", nowait = false }
        opts.window.mappings["bs"] = { "order_by_size", nowait = false }
        opts.window.mappings["bt"] = { "order_by_type", nowait = false }
    end,

}
