return {
    "CopilotC-Nvim/CopilotChat.nvim",
    opts = {},
    build = function()
        vim.cmd("UpdateRemotePlugins")
    end,
    event = "VeryLazy",
    keys = {
        {
            desc = "Copilot Chat",
            "<leader>cc",
            function()
                vim.ui.input({
                    prompt = "Copilot Chat: ",
                }, function(input)
                    if input == nil or input == "" then
                        print(" ")
                        return
                    end

                    vim.cmd("CopilotChat " .. input)
                end)
            end,
        },
    },
}
