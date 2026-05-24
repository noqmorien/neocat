return {
    {
        "folke/which-key.nvim",
        event = "VeryLazy",
        opts = {
            preset = "modern",
            icons = {
                breadcrumb = "»",
                separator = "➜",
                group = "+",
            },
            spec = {
                { "<leader>n", group = "File Tree" },
                { "<leader>f", group = "Find" },
                { "<leader>p", group = "Package" },
                { "<leader>l", group = "Code" },
                { "<leader>d", group = "Dashboard" },
            },
        },
    }
}
