-- Native Neovim 0.12 UI2
-- Replaces noice.nvim functionality:
--   - Floating cmdline inline (no more "Press ENTER")
--   - Message pager for long output
--   - Rounded borders for all floating windows
--   - LSP progress spinner via vim.ui.progress_status()

local M = {}

function M.setup()
    -- Enable native UI2: cmdline + message rewrite
    -- No more "Press ENTER" prompts, long messages become pager
    require('vim._core.ui2').enable()

    -- Global rounded border for all floating windows
    -- (LSP hover, signature help, diagnostics, etc)
    vim.opt.winborder = "rounded"

    -- Show LSP documentation inline in completion popup
    vim.opt.completeopt:append("popup")
end

-- Utility: LSP progress spinner for statusline
-- Usage in lualine: { function() return require('neocat.core.ui2').lsp_progress() end }
function M.lsp_progress()
    return vim.ui.progress_status()
end

return M
