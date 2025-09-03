return {
    {
        'nvim-treesitter/nvim-treesitter',
        config = function()
            require'nvim-tree'.setup{}
        end
    }
}
