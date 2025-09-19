local neocat = require 'neocat'

-- everforest themes for cmp autocompletion
local cmp_cosmetics = function()
    -- Selection and menu
    vim.api.nvim_set_hl(0, "PmenuSel", { bg = "#475258", fg = "NONE" })
    vim.api.nvim_set_hl(0, "Pmenu", { fg = "#d3c6aa", bg = "#2d353b" })

    -- Abbreviation styling
    vim.api.nvim_set_hl(0, "CmpItemAbbrDeprecated", { fg = "#7a8478", bg = "NONE", strikethrough = true })
    vim.api.nvim_set_hl(0, "CmpItemAbbrMatch", { fg = "#7fbbb3", bg = "NONE", bold = true })
    vim.api.nvim_set_hl(0, "CmpItemAbbrMatchFuzzy", { fg = "#7fbbb3", bg = "NONE", bold = true })
    vim.api.nvim_set_hl(0, "CmpItemMenu", { fg = "#83c092", bg = "NONE", italic = true })

    -- Custom kind (Codeium)
    vim.api.nvim_set_hl(0, "CmpItemKindCodeium", { bg = "#475258", fg = "#e67e80", bold = true })

    -- Red group
    vim.api.nvim_set_hl(0, "CmpItemKindField", { fg = "#e67e80", bg = "#2d353b" })
    vim.api.nvim_set_hl(0, "CmpItemKindProperty", { fg = "#e67e80", bg = "#2d353b" })
    vim.api.nvim_set_hl(0, "CmpItemKindEvent", { fg = "#e67e80", bg = "#2d353b" })

    -- Green group
    vim.api.nvim_set_hl(0, "CmpItemKindText", { fg = "#a7c080", bg = "#2d353b" })
    vim.api.nvim_set_hl(0, "CmpItemKindEnum", { fg = "#a7c080", bg = "#2d353b" })
    vim.api.nvim_set_hl(0, "CmpItemKindKeyword", { fg = "#a7c080", bg = "#2d353b" })

    -- Orange group
    vim.api.nvim_set_hl(0, "CmpItemKindConstant", { fg = "#dbbc7f", bg = "#475258" })
    vim.api.nvim_set_hl(0, "CmpItemKindConstructor", { fg = "#dbbc7f", bg = "#475258" })
    vim.api.nvim_set_hl(0, "CmpItemKindReference", { fg = "#dbbc7f", bg = "#475258" })

    -- Blue group
    vim.api.nvim_set_hl(0, "CmpItemKindFunction", { fg = "#7fbbb3", bg = "#2d353b" })
    vim.api.nvim_set_hl(0, "CmpItemKindStruct", { fg = "#7fbbb3", bg = "#2d353b" })
    vim.api.nvim_set_hl(0, "CmpItemKindClass", { fg = "#7fbbb3", bg = "#2d353b" })
    vim.api.nvim_set_hl(0, "CmpItemKindModule", { fg = "#7fbbb3", bg = "#2d353b" })
    vim.api.nvim_set_hl(0, "CmpItemKindOperator", { fg = "#7fbbb3", bg = "#2d353b" })

    -- Neutral
    vim.api.nvim_set_hl(0, "CmpItemKindVariable", { fg = "#d3c6aa", bg = "#475258" })
    vim.api.nvim_set_hl(0, "CmpItemKindFile", { fg = "#d3c6aa", bg = "#475258" })

    -- Yellow group
    vim.api.nvim_set_hl(0, "CmpItemKindUnit", { fg = "#dbbc7f", bg = "#2d353b" })
    vim.api.nvim_set_hl(0, "CmpItemKindSnippet", { fg = "#dbbc7f", bg = "#2d353b" })
    vim.api.nvim_set_hl(0, "CmpItemKindFolder", { fg = "#dbbc7f", bg = "#2d353b" })

    -- Aqua group
    vim.api.nvim_set_hl(0, "CmpItemKindMethod", { fg = "#83c092", bg = "#2d353b" })
    vim.api.nvim_set_hl(0, "CmpItemKindValue", { fg = "#83c092", bg = "#2d353b" })
    vim.api.nvim_set_hl(0, "CmpItemKindEnumMember", { fg = "#83c092", bg = "#2d353b" })

    -- Magenta group
    vim.api.nvim_set_hl(0, "CmpItemKindInterface", { fg = "#d699b6", bg = "#475258" })
    vim.api.nvim_set_hl(0, "CmpItemKindColor", { fg = "#d699b6", bg = "#475258" })
    vim.api.nvim_set_hl(0, "CmpItemKindTypeParameter", { fg = "#d699b6", bg = "#475258" })

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
