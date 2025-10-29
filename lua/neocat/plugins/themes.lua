return {
  -- {
  --     "ellisonleao/gruvbox.nvim",
  --     priority = 1000,
  --     config = function()
  --         require("gruvbox").setup({
  --             terminal_colors = true,
  --             dim_inactive = true,
  --             transparent_mode = true,
  --         })
  --         vim.cmd([[colorscheme gruvbox]])
  --     end,
  -- }
   {
       "catppuccin/nvim",
       name = "catppuccin",
       priority = 1000,
       config = function()
           require("catppuccin").setup({
               flavour = 'mocha',
               float = {
                   transparent_background = true,
                   solid = true
               },
               term_colors = true,
               transparent_background = true,
           })
           vim.cmd([[colorscheme catppuccin]])
       end,
   },
}
