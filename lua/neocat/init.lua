local M = {}
local utils = require'neocat.core.utils'
local pm = require'neocat.core.pm'
local config = require'neocat.core.config'
local keybind = require'neocat.core.keybind'

function M.setup(opt)


    -- setup neovim config
    local cfg = utils.merge(config.config, opt.config and opt.config or {})
    config.setup(cfg)
    
    -- setup keybind
    local kbcfg = vim.list_extend(keybind.keybind, opt.keybind and opt.keybind or {})
    keybind.setup(kbcfg)

    pm.check_and_install()

    if opt.init then
        opt.init()
    end
end

return M
