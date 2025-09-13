local setup_lsp = function(lspconfig, capabilities)

    lspconfig.vimls.setup {
        capabilities = capabilities
    }

    lspconfig.rust_analyzer.setup {
        capabilities = capabilities,
        settings = {
            ["rust-analyzer"] = {
                checkOnSave = true,
                check = {
                    command = "clippy"
                }
            }
        }
    }

    lspconfig.pyright.setup {
        capabilities = capabilities,
        settings = {
            ["pyright"] = {
                analysis = {
                    useLibraryCodeForTypes = true,
                    diagnosticSeverityOverrides = {
                        reportUnusedVariable = "warning",
                    },
                    typeCheckingMode = "off",
                    diagnosticMode = "off",
                },
            }
        }
    }

    lspconfig.pylsp.setup {
        capabilities = capabilities,
        settings = {
            ["pylsp"] = {
                plugins = {
                    pycodestyle = {
                        maxLineLength = 0,
                        ignore = { "E501" },
                        enabled = true
                    }
                }
            }
        }
    }
end

return {
    {
        'mason-org/mason-lspconfig.nvim',
        config = function()
            local lspconfig = require'lspconfig'
            local mason_lspconfig = require'mason-lspconfig'
            local mason = require'mason'
            mason.setup {
                ui = {
                    icons = {
                        package_installed = "✓",
                        package_pending = "➜",
                        package_uninstalled = "✗"
                    }
                }
            }
            mason_lspconfig.setup {
                automatic_enable = true,
                ensure_installed = {
                    "lua_ls",
                    "harper_ls",
                },
                handlers = function(server_name)
                    print("active lsp: "..server_name)
                end
            }

        end,
        dependencies = {
            { 'mason-org/mason.nvim' },
            { 'neovim/nvim-lspconfig' }
        },
    },
    {
        'hrsh7th/nvim-cmp',
        config = function()
            local has_words_before = function()
                unpack = unpack or table.unpack
                local line, col = unpack(vim.api.nvim_win_get_cursor(0))
                return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
            end

            local lspconfig = require'lspconfig'
            local lspkind = require'lspkind'
            lspkind.init {}

            local trouble = require'trouble'
            local cmp = require'cmp'
            local luasnip = require'luasnip'
            local lspsaga = require'lspsaga'
            local cmp_lsp = require'cmp_nvim_lsp'

            local capabilities = cmp_lsp.default_capabilities()

            capabilities.textDocument.completion.completionItem.snippetSupport = true

            setup_lsp(lspconfig, capabilities)

            cmp.setup {
                window = {
                    completion = {
                        winhighlight = "Normal:Pmenu,FloatingBorder:Pmenu,Search:None",
                        col_offset = -3,
                        side_padding = 0,
                    }
                },
                mapping = {
                    ['<Tab>'] = cmp.mapping(function(fallback)
                        if cmp.visible() then
                            cmp.select_next_item()
                        elseif luasnip.expand_or_jumpable() then
                            luasnip.expand_or_jumpable()
                        elseif has_words_before() then
                            cmp.complete()
                        else
                            fallback()
                        end
                    end, {'i', 's', 'c'}),
                    ['<C-n>'] = cmp.mapping(function(fallback)
                        if cmp.visible() then
                            cmp.select_next_item()
                        elseif luasnip.expand_or_jumpable() then
                            luasnip.expand_or_jumpable()
                        elseif has_words_before() then
                            cmp.complete()
                        else
                            fallback()
                        end
                    end, {'i', 's', 'c'}),
                    ['<C-p>'] = cmp.mapping(function(fallback)
                        if cmp.visible() then
                            cmp.select_prev_item()
                        elseif luasnip.expand_or_jumpable() then
                            luasnip.expand_or_jumpable()
                        elseif has_words_before() then
                            cmp.complete()
                        else
                            fallback()
                        end
                    end, {'i', 's', 'c'}),
                    ['<CR>'] = cmp.mapping.confirm({ select = true }),
                },
                snippet = {
                    expand = function(args)
                        luasnip.lsp_expand(args.body)
                    end
                },
                formatting = {
                    fields = { 'kind', 'abbr', 'menu'},
                    format = function(entry, vim_item)
                        local kind = lspkind.cmp_format({
                            with_text = true,
                            mode = "symbol_text",
                            menu = ({
                                codeium = "[Codeium]",
                                buffer = "[Buffer]",
                                nvim_lsp = "[LSP]",
                                luasnip = "[LuaSnip]",
                                nvim_lua = "[Lua]",
                                latex_symbols = "[Latex]",
                            }),
                            maxwidth = 50,
                            maxheight = 10,
                            before = function(entry, vim_item)
                                if entry.source.name == 'codeium' then
                                    vim_item.kind = string.format('%s %s', "󱚝", "AI")
                                end
                                vim_item.menu = ({
                                    codeium = "[Codeium]",
                                    buffer = "[Buffer]",
                                    nvim_lsp = "[LSP]",
                                    luasnip = "[LuaSnip]",
                                    nvim_lua = "[Lua]",
                                    latex_symbols = "[Latex]",
                                })[entry.source.name]
                                return vim_item
                            end
                        })(entry, vim_item)
                        local strings = vim.split(kind.kind, "%s", { trimempty = true })
                        kind.kind = " " .. (strings[1] or "") .. " "
                        kind.menu = "    [" .. (strings[2] or "") .. "]"
                        return kind
                    end
                },
                sources = cmp.config.sources {
                    { name = 'codeium' },
                    { name = 'nvim_lsp' },
                    { name = 'luasnip' },
                    { name = 'nvim_lsp_signature_help' },
                    {
                        name = 'buffer',
                        option = {
                            get_bufnrs = function()
                                return { vim.api.nvim_get_current_buf() }
                            end
                        }
                    },
                    { name = 'look', keyword_length = 2, option = { convert_case = true, loud= false }}
                },
                view = {
                    entries = { name = 'custom', selection_order = 'near_cursor' }
                },
                experimental = {
                    ghost_text = true
                }
            }

            cmp.setup.cmdline(':', {
                sources = cmp.config.sources {
                    { name = "path" },
                    { name = "cmdline" },
                },
                view = {
                    entries = { name = 'custom', selection_order = 'near_cursor' }
                }
            })

            cmp.setup.cmdline('/', {
                mapping = cmp.mapping.preset.cmdline(),
                sources = cmp.config.sources {
                    { name = 'buffer' }
                },
                view = {
                    entries = { name = 'custom', selection_order = 'near_cursor' }
                }
            })

            lspsaga.setup {
                code_action = {
                    show_server_name = true,
                    show_gitsign = true,
                },
                diagnostic = {},
                ui = {
                    theme = 'round',
                    title = true,
                    devicon = false,
                    lines = { '┗', '┣', '┃', '━', '┏' },
                    border = 'rounded',
                    winblend = 0,
                    expand = '',
                    collapse = '  ',
                    preview = ' ',
                    code_action = '',
                    actionfix = '󱢇 ',
                    code_action_prompt = { enable = true },
                    diagnostic = '  ',
                    incoming = ' ',
                    outgoing = ' ',
                    beacon = {
                        enable = true,
                        frequency = 7
                    },
                },
                symbol_in_winbar = {
                    enable = true,
                    separator = ' 󰄾 '
                },
                implementation = {
                    enable = true
                }
            }

            vim.diagnostic.config {
                virtual_text = {
                    prefix = '●', -- Could be '●', '▎', 'x'
                }
            }

            trouble.setup{
                icons = {
                    indent = {
                        top           = "│ ",
                        middle        = "├╴",
                        last          = "└╴",
                        -- last          = "-╴",
                        -- last       = "╰╴", -- rounded
                        fold_open     = " ",
                        fold_closed   = " ",
                        ws            = "  ",
                    },
                    folder_closed   = " ",
                    folder_open     = " ",
                    kinds = {
                        Array         = " ",
                        Boolean       = "󰨙 ",
                        Class         = " ",
                        Constant      = "󰏿 ",
                        Constructor   = " ",
                        Enum          = " ",
                        EnumMember    = " ",
                        Event         = " ",
                        Field         = " ",
                        File          = " ",
                        Function      = "󰊕 ",
                        Interface     = " ",
                        Key           = " ",
                        Method        = "󰊕 ",
                        Module        = " ",
                        Namespace     = "󰦮 ",
                        Null          = " ",
                        Number        = "󰎠 ",
                        Object        = " ",
                        Operator      = " ",
                        Package       = " ",
                        Property      = " ",
                        String        = " ",
                        Struct        = "󰆼 ",
                        TypeParameter = " ",
                        Variable      = "󰀫 ",
                    },
                }
            }

        end,
        dependencies = {
            { 'hrsh7th/cmp-nvim-lsp' },
            { 'hrsh7th/cmp-buffer' },
            { 'hrsh7th/cmp-path' },
            { 'hrsh7th/cmp-cmdline' },
            { 'nvimdev/lspsaga.nvim' },
            { 'onsails/lspkind-nvim' },
            { 'lukas-reineke/lsp-format.nvim' },
            { 'L3MON4D3/LuaSnip' },
            { 'saadparwaiz1/cmp_luasnip' },
            { 'folke/trouble.nvim' },
            { 'ray-x/lsp_signature.nvim' },
        }
    },
}
