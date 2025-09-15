local M = {}

M.keybind = {
    -- neerd tree
    {
        mode = "n",
        key = "<leader>nt",
        command = ":NvimTreeToggle<CR>",
        opts = {
            silent = true,
            noremap = true,
        }
    },
    -- package sync
    {
        mode = "n",
        key = "<leader>ps",
        command = ":Lazy sync<CR>",
        opts = {
            silent = true,
            noremap = true
        },
    },
    -- telescope
    {
        mode = "n",
        key = "<leader>ff",
        command = ":Telescope find_files<CR>",
        opts = { silent = true, noremap = true }
    },
    {
        mode = "n",
        key = "<leader>lg",
        command = ":Telescope live_grep<CR>",
        opts = { silent = true, noremap = true }
    },
    {
        mode = "n",
        key = "<leader>fb",
        command = ":Telescope buffers<CR>",
        opts = { silent = true, noremap = true }
    },
    -- code actions
    {
        mode = "n",
        key = "<leader>l",
        command = ":Lspsaga finder<CR>",
        opts = { silent = true, noremap = true }
    },
    {
        mode = "n",
        key = "ca",
        command = ":Lspsaga code_action<CR>",
        opts = { silent = true, noremap = true }
    },
    {
        mode = "n",
        key = "hd",
        command = ":Lspsaga hover_doc<CR>",
        opts = { silent = true, noremap = true }
    },
    {
        mode = "n",
        key = "sd",
        command = ":Lspsaga show_line_diagnostics<CR>",
        opts = { silent = true, noremap = true }
    },
    {
        mode = "n",
        key = "pd",
        command = ":Lspsaga peek_definition<CR>",
        opts = { silent = true, noremap = true }
    },
    {
        mode = "n",
        key = "gd",
        command = ":Lspsaga goto_definition<CR>",
        opts = { silent = true, noremap = true }
    },
    {
        mode = "n",
        key = "<leader>;",
        command = ":Lspsaga term_toggle<CR>",
        opts = { silent = true, noremap = true }
    },
    -- trouble
    {
        mode = "n",
        key = "tt",
        command = ":Trouble diagnostics toggle<CR>",
        opts = { silent = true, noremap = true }
    },
    {
        mode = "n",
        key = "ts",
        command = ":Trouble diagnostics refresh<CR>",
        opts = { silent = true, noremap = true }
    },
    {
        mode = "n",
        key = "tc",
        command = ":Trouble diagnostics close<CR>",
        opts = { silent = true, noremap = true }
    },
    -- basics movement
    {
        mode = "n",
        key = "tc",
        command = ":Trouble diagnostics close<CR>",
        opts = { silent = true, noremap = true }
    },
    {
        mode = "n",
        key = "<A-l>",
        command = ":bnext<CR>",
        opts = { silent = true, noremap = true }
    },
    {
        mode = "n",
        key = "<A-h>",
        command = ":bprevious<CR>",
        opts = { silent = true, noremap = true }
    },
    -- dashboard
    {
        mode = "n",
        key = "<leader>dd",
        command = ":lua Snacks.dashboard()<CR>",
        opts = { silent = true, noremap = true }
    },
}

function M.setup(config)
    for _, map in pairs(config) do
        vim.api.nvim_set_keymap(map.mode, map.key, map.command, map.opts)
    end
end

return M
