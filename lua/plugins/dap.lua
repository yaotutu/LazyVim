local cwd = vim.fn.getcwd()

return {
    "mfussenegger/nvim-dap",
    opts = function()
        local dap = require('dap')

        local fileTypes = { "typescript", "javascript", "typescriptreact", "javascriptreact" }
        local function addDapConfigurationForFileType(fileType)
            -- 确保 dap.configurations[fileType] 是一个表
            if not dap.configurations[fileType] then
                dap.configurations[fileType] = {}
            end
            -- 插入新的配置项
            table.insert(dap.configurations[fileType], {
                type = "pwa-node",
                request = "attach",
                name = "Attach to Port 9229",
                port = 9229, -- 确保端口是一个数字
                sourceMaps = true,
                autoReload = {
                    enable = true,
                }
            })
        end

        for _, fileType in ipairs(fileTypes) do
            addDapConfigurationForFileType(fileType)
        end
    end,
}
