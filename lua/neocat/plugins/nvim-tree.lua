
return {
    { 
        'nvim-tree/nvim-tree.lua',
        config = function()
            local file_tree = require'nvim-tree'
            file_tree.setup {
                sort = {
                    sorter = "case_sensitive",
                },
                view = {
                    width = 24,
                },
                renderer = {
                    group_empty = true,
                    highlight_git = "name",
                    highlight_opened_files = "name",
                    highlight_modified = "icon",
                    indent_markers = {
                        enable = true,
                        inline_arrows = true,
                        icons = {
                            corner = "└",
                            edge = "│",
                            item = "│",
                            bottom = "─",
                            none = " ",
                        },
                    },
                    icons = {
                        glyphs = {
                            git = {
                                unstaged = "✗",
                                staged = "✓",
                                unmerged = "",
                                renamed = "➜",
                                untracked = "★",
                                deleted = "",
                                ignored = "◌",
                            },
                        },
                        git_placement = "before",
                        modified_placement = "after",
                        padding = { icon = " ", folder_arrow = " " },
                    },
                    root_folder_label = ":~:s?$?/..?",
                },
                filters = {
                    dotfiles = true,
                },
                diagnostics = {
                    enable = true,
                    show_on_dirs = true,
                    icons = {
                        hint = "",
                        info = "",
                        warning = "",
                        error = "",
                    },
                },
            }
        end,
    }
}
