local neocat = require 'neocat'

-- Catppuccin CMP cosmetics: uncomment saat pake tema catppuccin
-- require('neocat.core.cmp-cosmetics').setup()

local anchor_linux_development = function()
    -- supports to *.pbuild format
    vim.api.nvim_create_autocmd({"BufRead", "BufNewFile"}, {
        pattern = "*.pbuild",
        command = "set filetype=make"
    })
end

local php_blade_fix = function()
    -- fix error on *.blade.php
    vim.api.nvim_create_autocmd({"BufRead", "BufNewFile"}, {
        pattern = "*.blade.php",
        command = "set filetype=phtml"
    })
end


neocat.setup {
    init = function()
        -- Native Neovim 0.12 UI2
        require('neocat.core.ui2').setup()

        anchor_linux_development()
        php_blade_fix()
    end,
    config = {
    },
    keybind = {
    }
}
