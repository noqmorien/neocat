local M = {}
local fn = vim.fn
local echo = vim.api.nvim_echo
local global_path = fn.stdpath("data") .. "/lazy/lazy.nvim"
local repos = "https://github.com/folke/lazy.nvim.git"

-- function to check and install package manager
function M.check_and_install()
    if M.is_not_installed() then
        local install_status = fn.system({
            "git",
            "clone",
            "--filter=blob:none",
            "--single-branch",
            repos,
            global_path,
        })

        if vim.v.shell_error ~= 0 then
            echo({
                { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
                { install_status,                 "WarnMsg" },
                { "\nPress any key to exit .." }
            }, true, {})
            fn.getchar()
            os.exit(1)
        end
    end
    if not M.is_not_installed() then
        vim.opt.rtp:prepend(global_path)
        require 'lazy'.setup {
            spec = {
                { import = "neocat.plugins" },
                { import = "plugins" }
            },
            checker = { enabled = true, notify = true },
            install = {
                missing = true,
            }
        }
    end
end

function M.is_not_installed()
    return fn.empty(fn.glob(global_path)) > 0
end

return M
