local M = {}

M.keybind = {
    {
        mode = "n",
        key = "<leader>nt",
        command = ":NvimTreeToggle<CR>",
        desc = "Toggle file tree",
        opts = { silent = true, noremap = true },
    },
    {
        mode = "n",
        key = "<leader>ps",
        command = ":Lazy sync<CR>",
        desc = "Sync packages",
        opts = { silent = true, noremap = true },
    },
    {
        mode = "n",
        key = "<leader>ff",
        command = ":Telescope find_files<CR>",
        desc = "Find files",
        opts = { silent = true, noremap = true },
    },
    {
        mode = "n",
        key = "<leader>fg",
        command = ":Telescope live_grep<CR>",
        desc = "Live grep",
        opts = { silent = true, noremap = true },
    },
    {
        mode = "n",
        key = "<leader>fb",
        command = ":Telescope buffers<CR>",
        desc = "Find buffers",
        opts = { silent = true, noremap = true },
    },
    {
        mode = "n",
        key = "<leader>l",
        command = ":Lspsaga finder<CR>",
        desc = "LSP finder",
        opts = { silent = true, noremap = true },
    },
    {
        mode = "n",
        key = "ca",
        command = ":Lspsaga code_action<CR>",
        desc = "Code action",
        opts = { silent = true, noremap = true },
    },
    {
        mode = "n",
        key = "cd",
        command = ":Lspsaga hover_doc<CR>",
        desc = "Hover doc",
        opts = { silent = true, noremap = true },
    },
    {
        mode = "n",
        key = "sd",
        command = ":Lspsaga show_line_diagnostics<CR>",
        desc = "Line diagnostics",
        opts = { silent = true, noremap = true },
    },
    {
        mode = "n",
        key = "pd",
        command = ":Lspsaga peek_definition<CR>",
        desc = "Peek definition",
        opts = { silent = true, noremap = true },
    },
    {
        mode = "n",
        key = "gd",
        command = ":Lspsaga goto_definition<CR>",
        desc = "Go to definition",
        opts = { silent = true, noremap = true },
    },
    {
        mode = "n",
        key = "<leader>;",
        command = ":Lspsaga term_toggle<CR>",
        desc = "Toggle terminal",
        opts = { silent = true, noremap = true },
    },
    {
        mode = "n",
        key = "tt",
        command = ":Trouble diagnostics toggle<CR>",
        desc = "Toggle trouble",
        opts = { silent = true, noremap = true },
    },
    {
        mode = "n",
        key = "ts",
        command = ":Trouble diagnostics refresh<CR>",
        desc = "Trouble refresh",
        opts = { silent = true, noremap = true },
    },
    {
        mode = "n",
        key = "tc",
        command = ":Trouble diagnostics close<CR>",
        desc = "Close trouble",
        opts = { silent = true, noremap = true },
    },
    {
        mode = "n",
        key = "<A-l>",
        command = ":bnext<CR>",
        desc = "Next buffer",
        opts = { silent = true, noremap = true },
    },
    {
        mode = "n",
        key = "<A-h>",
        command = ":bprevious<CR>",
        desc = "Previous buffer",
        opts = { silent = true, noremap = true },
    },
    {
        mode = "n",
        key = "<leader>dd",
        command = ":lua Snacks.dashboard()<CR>",
        desc = "Dashboard",
        opts = { silent = true, noremap = true },
    },
    {
        mode = "n",
        key = "<A-j>",
        command = ":m+1<CR>",
        desc = "Move line down",
        opts = { silent = true, noremap = true },
    },
    {
        mode = "n",
        key = "<A-k>",
        command = ":m-2<CR>",
        desc = "Move line up",
        opts = { silent = true, noremap = true },
    },
    {
        mode = "v",
        key = "<A-j>",
        command = ":m'>+1<CR>gv=gv",
        desc = "Move selection down",
        opts = { silent = true, noremap = true },
    },
    {
        mode = "v",
        key = "<A-k>",
        command = ":m'<-2<CR>gv=gv",
        desc = "Move selection up",
        opts = { silent = true, noremap = true },
    },
}

function M.setup(config)
    for _, map in pairs(config) do
        local opts = vim.tbl_deep_extend("force", map.opts or {}, { desc = map.desc })
        vim.keymap.set(map.mode, map.key, map.command, opts)
    end
end

return M
