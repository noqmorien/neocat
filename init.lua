local neocat = require 'neocat'

-- gruvbox themes for cmp autocompletion
local cmp_cosmetics = function()
    -- Selection and menu
    vim.api.nvim_set_hl(0, "PmenuSel", { bg = "#504945", fg = "NONE" }) -- selection
    vim.api.nvim_set_hl(0, "Pmenu", { fg = "#ebdbb2", bg = "#282828" }) -- menu

    -- Abbreviation styling
    vim.api.nvim_set_hl(0, "CmpItemAbbrDeprecated", { fg = "#928374", bg = "NONE", strikethrough = true })
    vim.api.nvim_set_hl(0, "CmpItemAbbrMatch", { fg = "#fe8019", bg = "NONE", bold = true })
    vim.api.nvim_set_hl(0, "CmpItemAbbrMatchFuzzy", { fg = "#fe8019", bg = "NONE", bold = true })
    vim.api.nvim_set_hl(0, "CmpItemMenu", { fg = "#b8bb26", bg = "NONE", italic = true })

    -- Custom kind (e.g. Codeium)
    vim.api.nvim_set_hl(0, "CmpItemKindCodeium", { bg = "#504945", fg = "#fb4934", bold = true })

    -- Red group
    vim.api.nvim_set_hl(0, "CmpItemKindField", { fg = "#fb4934", bg = "#3c3836" })
    vim.api.nvim_set_hl(0, "CmpItemKindProperty", { fg = "#fb4934", bg = "#3c3836" })
    vim.api.nvim_set_hl(0, "CmpItemKindEvent", { fg = "#fb4934", bg = "#3c3836" })

    -- Green group
    vim.api.nvim_set_hl(0, "CmpItemKindText", { fg = "#b8bb26", bg = "#3c3836" })
    vim.api.nvim_set_hl(0, "CmpItemKindEnum", { fg = "#b8bb26", bg = "#3c3836" })
    vim.api.nvim_set_hl(0, "CmpItemKindKeyword", { fg = "#b8bb26", bg = "#3c3836" })

    -- Orange group
    vim.api.nvim_set_hl(0, "CmpItemKindConstant", { fg = "#fe8019", bg = "#504945" })
    vim.api.nvim_set_hl(0, "CmpItemKindConstructor", { fg = "#fe8019", bg = "#504945" })
    vim.api.nvim_set_hl(0, "CmpItemKindReference", { fg = "#fe8019", bg = "#504945" })

    -- Blue (Primary) group
    vim.api.nvim_set_hl(0, "CmpItemKindFunction", { fg = "#83a598", bg = "#3c3836" })
    vim.api.nvim_set_hl(0, "CmpItemKindStruct", { fg = "#83a598", bg = "#3c3836" })
    vim.api.nvim_set_hl(0, "CmpItemKindClass", { fg = "#83a598", bg = "#3c3836" })
    vim.api.nvim_set_hl(0, "CmpItemKindModule", { fg = "#83a598", bg = "#3c3836" })
    vim.api.nvim_set_hl(0, "CmpItemKindOperator", { fg = "#83a598", bg = "#3c3836" })

    -- Neutral
    vim.api.nvim_set_hl(0, "CmpItemKindVariable", { fg = "#ebdbb2", bg = "#504945" })
    vim.api.nvim_set_hl(0, "CmpItemKindFile", { fg = "#ebdbb2", bg = "#504945" })

    -- Yellow group
    vim.api.nvim_set_hl(0, "CmpItemKindUnit", { fg = "#d79921", bg = "#3c3836" })
    vim.api.nvim_set_hl(0, "CmpItemKindSnippet", { fg = "#d79921", bg = "#3c3836" })
    vim.api.nvim_set_hl(0, "CmpItemKindFolder", { fg = "#d79921", bg = "#3c3836" })

    -- Aqua/Teal group
    vim.api.nvim_set_hl(0, "CmpItemKindMethod", { fg = "#8ec07c", bg = "#3c3836" })
    vim.api.nvim_set_hl(0, "CmpItemKindValue", { fg = "#8ec07c", bg = "#3c3836" })
    vim.api.nvim_set_hl(0, "CmpItemKindEnumMember", { fg = "#8ec07c", bg = "#3c3836" })

    -- Cyan-ish group
    vim.api.nvim_set_hl(0, "CmpItemKindInterface", { fg = "#689d6a", bg = "#504945" })
    vim.api.nvim_set_hl(0, "CmpItemKindColor", { fg = "#689d6a", bg = "#504945" })
    vim.api.nvim_set_hl(0, "CmpItemKindTypeParameter", { fg = "#689d6a", bg = "#504945" })
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
