local neocat = require 'neocat'

-- catppuccin mocha themes for cmp autocompletion
local cmp_cosmetics = function()
    -- Selection and menu
    vim.api.nvim_set_hl(0, "PmenuSel", { bg = "#313244", fg = "NONE" })
    vim.api.nvim_set_hl(0, "Pmenu", { fg = "#cdd6f4", bg = "#1e1e2e" })

    -- Abbreviation styling
    vim.api.nvim_set_hl(0, "CmpItemAbbrDeprecated", { fg = "#6c7086", bg = "NONE", strikethrough = true })
    vim.api.nvim_set_hl(0, "CmpItemAbbrMatch", { fg = "#89b4fa", bg = "NONE", bold = true })
    vim.api.nvim_set_hl(0, "CmpItemAbbrMatchFuzzy", { fg = "#89b4fa", bg = "NONE", bold = true })
    vim.api.nvim_set_hl(0, "CmpItemMenu", { fg = "#a6e3a1", bg = "NONE", italic = true })

    -- Custom kind (Codeium)
    vim.api.nvim_set_hl(0, "CmpItemKindCodeium", { bg = "#313244", fg = "#f38ba8", bold = true })

    -- Red group
    vim.api.nvim_set_hl(0, "CmpItemKindField", { fg = "#f38ba8", bg = "#1e1e2e" })
    vim.api.nvim_set_hl(0, "CmpItemKindProperty", { fg = "#f38ba8", bg = "#1e1e2e" })
    vim.api.nvim_set_hl(0, "CmpItemKindEvent", { fg = "#f38ba8", bg = "#1e1e2e" })

    -- Green group
    vim.api.nvim_set_hl(0, "CmpItemKindText", { fg = "#a6e3a1", bg = "#1e1e2e" })
    vim.api.nvim_set_hl(0, "CmpItemKindEnum", { fg = "#a6e3a1", bg = "#1e1e2e" })
    vim.api.nvim_set_hl(0, "CmpItemKindKeyword", { fg = "#a6e3a1", bg = "#1e1e2e" })

    -- Orange group
    vim.api.nvim_set_hl(0, "CmpItemKindConstant", { fg = "#fab387", bg = "#313244" })
    vim.api.nvim_set_hl(0, "CmpItemKindConstructor", { fg = "#fab387", bg = "#313244" })
    vim.api.nvim_set_hl(0, "CmpItemKindReference", { fg = "#fab387", bg = "#313244" })

    -- Blue group
    vim.api.nvim_set_hl(0, "CmpItemKindFunction", { fg = "#89b4fa", bg = "#1e1e2e" })
    vim.api.nvim_set_hl(0, "CmpItemKindStruct", { fg = "#89b4fa", bg = "#1e1e2e" })
    vim.api.nvim_set_hl(0, "CmpItemKindClass", { fg = "#89b4fa", bg = "#1e1e2e" })
    vim.api.nvim_set_hl(0, "CmpItemKindModule", { fg = "#89b4fa", bg = "#1e1e2e" })
    vim.api.nvim_set_hl(0, "CmpItemKindOperator", { fg = "#89b4fa", bg = "#1e1e2e" })

    -- Neutral
    vim.api.nvim_set_hl(0, "CmpItemKindVariable", { fg = "#cdd6f4", bg = "#313244" })
    vim.api.nvim_set_hl(0, "CmpItemKindFile", { fg = "#cdd6f4", bg = "#313244" })

    -- Yellow group
    vim.api.nvim_set_hl(0, "CmpItemKindUnit", { fg = "#f9e2af", bg = "#1e1e2e" })
    vim.api.nvim_set_hl(0, "CmpItemKindSnippet", { fg = "#f9e2af", bg = "#1e1e2e" })
    vim.api.nvim_set_hl(0, "CmpItemKindFolder", { fg = "#f9e2af", bg = "#1e1e2e" })

    -- Aqua group
    vim.api.nvim_set_hl(0, "CmpItemKindMethod", { fg = "#94e2d5", bg = "#1e1e2e" })
    vim.api.nvim_set_hl(0, "CmpItemKindValue", { fg = "#94e2d5", bg = "#1e1e2e" })
    vim.api.nvim_set_hl(0, "CmpItemKindEnumMember", { fg = "#94e2d5", bg = "#1e1e2e" })

    -- Magenta group
    vim.api.nvim_set_hl(0, "CmpItemKindInterface", { fg = "#f5c2e7", bg = "#313244" })
    vim.api.nvim_set_hl(0, "CmpItemKindColor", { fg = "#f5c2e7", bg = "#313244" })
    vim.api.nvim_set_hl(0, "CmpItemKindTypeParameter", { fg = "#f5c2e7", bg = "#313244" })
end


neocat.setup {
    init = function()
        cmp_cosmetics();
    end,
    config = {
    },
    keybind = {
    }
}
