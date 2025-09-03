
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
                },
                filters = {
                    dotfiles = true
                }
            }

        end
    }
}
