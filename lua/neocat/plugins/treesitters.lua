return {
    {
        'romus204/tree-sitter-manager.nvim',
        dependencies = {},
        config = function()
            require('tree-sitter-manager').setup({
                ensure_installed = {
                    'lua',
                    'c',
                    'cpp',
                    'go',
                    'rust',
                    'javascript',
                    'typescript',
                    'tsx',
                    'vue',
                    'dart',
                    'python',
                    'json',
                    'yaml',
                    'markdown',
                    'vim',
                    'vimdoc',
                    'bash',
                    'query',
                },
                auto_install = true,
                highlight = true,
            })
        end,
    }
}
