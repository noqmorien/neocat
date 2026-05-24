return {
    {
        "folke/flash.nvim",
        event = "VeryLazy",
        keys = {
            {
                "<leader>s",
                mode = { "n", "x", "o" },
                function()
                    require("flash").jump()
                end,
                desc = "Flash Jump",
            },
            {
                "<leader>S",
                mode = { "n", "x", "o" },
                function()
                    require("flash").treesitter()
                end,
                desc = "Flash Treesitter",
            },
        },
        opts = {
            -- Enhanced f/t/F/T motions with jump labels (no key conflict)
            modes = {
                char = {
                    enabled = true,
                    jump_labels = true,
                    multi_line = true,
                },
            },
        },
    }
}
