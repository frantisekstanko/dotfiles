return {
    "zbirenbaum/copilot.lua",
    event = "BufEnter",
    keys = {
        {
            "<leader>ce",
            function()
                CopilotEnable()
            end,
            desc = "Enable copilot",
        },
        {
            "<leader>cd",
            function()
                CopilotDisable()
            end,
            desc = "Disable copilot",
        },
        {
            "<leader>cs",
            function()
                CopilotStatus()
            end,
            desc = "Copilot status",
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
            require("notify")("Copilot enabled", vim.log.levels.WARN)
        end

        function CopilotDisable()
            vim.cmd("Copilot disable")
            require("notify")("Copilot disabled")
        end

        function CopilotStatus()
            vim.cmd("Copilot status")
        end

        local cur_dir = vim.fn.expand("%:p:h")

        if io.open(cur_dir .. "/.copilot", "r") == nil then
            return false
        end

        CopilotEnable()
    end,
}
