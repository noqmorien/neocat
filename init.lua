local neocat = require 'neocat'

-- gruvbox themes for cmp autocompletion
local cmp_cosmetics = function()
    -- Selection and menu
    vim.api.nvim_set_hl(0, "PmenuSel", { bg = "#3a3845", fg = "NONE" })
    vim.api.nvim_set_hl(0, "Pmenu", { fg = "#e0def4", bg = "#232136" })

    -- Abbreviation styling
    vim.api.nvim_set_hl(0, "CmpItemAbbrDeprecated", { fg = "#434158", bg = "NONE", strikethrough = true })
    vim.api.nvim_set_hl(0, "CmpItemAbbrMatch", { fg = "#eb6f92", bg = "NONE", bold = true })
    vim.api.nvim_set_hl(0, "CmpItemAbbrMatchFuzzy", { fg = "#eb6f92", bg = "NONE", bold = true })
    vim.api.nvim_set_hl(0, "CmpItemMenu", { fg = "#9ccfd8", bg = "NONE", italic = true })

    -- Custom kind (Codeium)
    vim.api.nvim_set_hl(0, "CmpItemKindCodeium", { bg = "#3a3845", fg = "#eb6f92", bold = true })

    -- Red (Love) group
    vim.api.nvim_set_hl(0, "CmpItemKindField", { fg = "#eb6f92", bg = "#232136" })
    vim.api.nvim_set_hl(0, "CmpItemKindProperty", { fg = "#eb6f92", bg = "#232136" })
    vim.api.nvim_set_hl(0, "CmpItemKindEvent", { fg = "#eb6f92", bg = "#232136" })

    -- Green (Foam) group
    vim.api.nvim_set_hl(0, "CmpItemKindText", { fg = "#9ccfd8", bg = "#232136" })
    vim.api.nvim_set_hl(0, "CmpItemKindEnum", { fg = "#9ccfd8", bg = "#232136" })
    vim.api.nvim_set_hl(0, "CmpItemKindKeyword", { fg = "#9ccfd8", bg = "#232136" })

    -- Orange (Gold) group
    vim.api.nvim_set_hl(0, "CmpItemKindConstant", { fg = "#f6c177", bg = "#3a3845" })
    vim.api.nvim_set_hl(0, "CmpItemKindConstructor", { fg = "#f6c177", bg = "#3a3845" })
    vim.api.nvim_set_hl(0, "CmpItemKindReference", { fg = "#f6c177", bg = "#3a3845" })

    -- Blue (Pine) group
    vim.api.nvim_set_hl(0, "CmpItemKindFunction", { fg = "#3e8fb0", bg = "#232136" })
    vim.api.nvim_set_hl(0, "CmpItemKindStruct", { fg = "#3e8fb0", bg = "#232136" })
    vim.api.nvim_set_hl(0, "CmpItemKindClass", { fg = "#3e8fb0", bg = "#232136" })
    vim.api.nvim_set_hl(0, "CmpItemKindModule", { fg = "#3e8fb0", bg = "#232136" })
    vim.api.nvim_set_hl(0, "CmpItemKindOperator", { fg = "#3e8fb0", bg = "#232136" })

    -- Neutral
    vim.api.nvim_set_hl(0, "CmpItemKindVariable", { fg = "#e0def4", bg = "#3a3845" })
    vim.api.nvim_set_hl(0, "CmpItemKindFile", { fg = "#e0def4", bg = "#3a3845" })

    -- Yellow (Gold) group
    vim.api.nvim_set_hl(0, "CmpItemKindUnit", { fg = "#f6c177", bg = "#232136" })
    vim.api.nvim_set_hl(0, "CmpItemKindSnippet", { fg = "#f6c177", bg = "#232136" })
    vim.api.nvim_set_hl(0, "CmpItemKindFolder", { fg = "#f6c177", bg = "#232136" })

    -- Aqua/Teal (Rose) group
    vim.api.nvim_set_hl(0, "CmpItemKindMethod", { fg = "#ea9a97", bg = "#232136" })
    vim.api.nvim_set_hl(0, "CmpItemKindValue", { fg = "#ea9a97", bg = "#232136" })
    vim.api.nvim_set_hl(0, "CmpItemKindEnumMember", { fg = "#ea9a97", bg = "#232136" })

    -- Cyan-ish (Iris) group
    vim.api.nvim_set_hl(0, "CmpItemKindInterface", { fg = "#c4a7e7", bg = "#3a3845" })
    vim.api.nvim_set_hl(0, "CmpItemKindColor", { fg = "#c4a7e7", bg = "#3a3845" })
    vim.api.nvim_set_hl(0, "CmpItemKindTypeParameter", { fg = "#c4a7e7", bg = "#3a3845" })

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
