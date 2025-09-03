return {
    {
        'OXY2DEV/markview.nvim',
        lazy = false,
        config = function()
            local markview = require'markview'
            markview.setup {
                experimental = {
                    check_rtp = false,
                    check_rtp_messae = false,
                }
            }
        end
    }
}
