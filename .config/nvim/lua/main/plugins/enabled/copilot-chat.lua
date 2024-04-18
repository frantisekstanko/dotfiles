return {
    "CopilotC-Nvim/CopilotChat.nvim",
    opts = {},
    build = function()
        vim.cmd("UpdateRemotePlugins")
    end,
    event = "VeryLazy",
    keys = {
        {
            desc = "Copilot Chat for current buffer",
            "<leader>cc",
            function()
                vim.ui.input({
                    prompt = "Copilot Chat for current buffer: ",
                }, function(input)
                    if input == nil or input == "" then
                        print(" ")
                        return
                    end

                    vim.cmd("CopilotChatBuffer " .. input)
                end)
            end,
        },
    },
}
