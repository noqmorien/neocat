return {
    {
        "nvim-mini/mini.pairs",
        priority = 1000,
        config = function()
            local pairs = require'mini.pairs'
            pairs.setup {
                modes = { insert = true, command = false, terminal = false },
            }
        end
    }
}
