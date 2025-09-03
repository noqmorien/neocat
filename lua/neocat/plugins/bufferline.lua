return {
    {
        'akinsho/bufferline.nvim',
        version = "*",
        config = function()
            local bufferline = require'bufferline'
            bufferline.setup{
                options = {
                    mode = "buffers",
                    numbers = "ordinal",
                    offsets = { { filetype = "NERDTree", text = "File Explorer", highlight = "directory", text_align = "left" } },
                    show_tab_indicator = true,
                    diagnostics = "nvim_lsp",
                    diagnostics_indicator = function(count, level)
                        local icon = level:match("error") and "" or level:match("warning") and "" or ""
                        return " (" .. icon .. " " .. count .. ")"
                    end,
                    separator_style = "slope",
                    always_show_bufferline = true,
                }
            }
        end,
        dependencies = {
            {
                'nvim-tree/nvim-web-devicons',
            }
        }
    }
}
