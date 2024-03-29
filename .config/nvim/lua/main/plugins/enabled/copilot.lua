return {
    "zbirenbaum/copilot.lua",
    event = "BufEnter",
    keys = {
        {
            desc = "Enable copilot",
            "<leader>ce",
            function()
                CopilotEnable()
            end,
        },
        {
            desc = "Disable copilot",
            "<leader>cd",
            function()
                CopilotDisable()
            end,
        },
        {
            desc = "Copilot status",
            "<leader>cs",
            function()
                CopilotStatus()
            end,
        },
    },
    config = function()
        function CopilotEnable()
            require("copilot").setup({
                panel = { enabled = false },
                suggestion = {
                    enabled = true,
                    auto_trigger = true,
                    keymap = {
                        accept = "<C-k>",
                        next = "<M-]>",
                        prev = "<M-[>",
                    },
                },
            })
            vim.notify("Copilot enabled", vim.log.levels.WARN)
        end

        function CopilotDisable()
            vim.cmd("Copilot disable")
            vim.notify("Copilot disabled")
        end

        function CopilotStatus()
            local status =
                vim.api.nvim_exec2("Copilot status", { output = true })
            vim.notify(status.output)
        end

        local cur_dir = vim.fn.expand("%:p:h")

        if io.open(cur_dir .. "/.copilot", "r") == nil then
            return false
        end

        CopilotEnable()
    end,
}
