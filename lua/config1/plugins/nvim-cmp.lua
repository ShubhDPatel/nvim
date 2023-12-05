return {
    "hrsh7th/nvim-cmp",
    dependencies = {
            "hrsh7th/cmp-nvim-lsp", -- For lsp servers
            "hrsh7th/cmp-nvim-lua", -- For vim stuff
            "hrsh7th/cmp-buffer", -- Buffer completions
            "hrsh7th/cmp-path", -- Path completions
            "hrsh7th/cmp-cmdline", -- cmdline completions
            "saadparwaiz1/cmp_luasnip", -- snippet completions
            "L3MON4D3/LuaSnip", -- snippet engine
    },
   
    event = {"InsertEnter", "CmdlineEnter"}, -- Load the plugin when entering insert mode
    
    config = function()

    local cmp = require("cmp")
    vim.opt.completeopt = { "menu", "menuone", "noselect" }

    local kind_icons = {
        -- https://github.com/hrsh7th/nvim-cmp/wiki/Menu-Appearance#basic-customisations
        Text = "󰉿",
        Method = "󰆧",
        Function = "󰊕",
        Constructor = "",
        Field = " ",
        Variable = "󰀫",
        Class = "󰠱",
        Interface = "",
        Module = "",
        Property = "󰜢",
        Unit = "󰑭",
        Value = "󰎠",
        Enum = "",
        Keyword = "󰌋",
        Snippet = "",
        Color = "󰏘",
        File = "󰈙",
        Reference = "",
        Folder = "󰉋",
        EnumMember = "",
        Constant = "󰏿",
        Struct = "",
        Event = "",
        Operator = "󰆕",
        TypeParameter = " ",
        Misc = " ",
    }

    cmp.setup({
        snippet = {
            expand = function(args)
                require("luasnip").lsp_expand(args.body) -- For `luasnip` users.
            end,
        },
        window = {
            completion = cmp.config.window.bordered(),
            documentation = cmp.config.window.bordered(),
        },
        mapping = cmp.mapping.preset.insert({
            ["<C-k>"] = cmp.mapping.select_prev_item(),
		    ["<C-j>"] = cmp.mapping.select_next_item(),
            ["<C-b>"] = cmp.mapping(cmp.mapping.scroll_docs(-4), { "i", "c" }),
            ["<C-f>"] = cmp.mapping(cmp.mapping.scroll_docs(4), { "i", "c" }),
            ["<C-Space>"] = cmp.mapping.complete(),
            ["<C-e>"] = cmp.mapping.abort(),
            ["<CR>"] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
        }),
        sources = cmp.config.sources(
        {
            { name = "nvim_lsp" },
            { name = "nvim_lua" },
            { name = "luasnip" }, -- For luasnip users.
        },
           {
            { name = "buffer" },
            { name = "path" },
           }
        ),
        formatting = {
            fields = { "kind", "abbr", "menu" },
            format = function(entry, vim_item)
                -- Kind icons
                vim_item.kind = string.format("%s", kind_icons[vim_item.kind])
                -- Source
                vim_item.menu = ({
                    luasnip = "[Snippet]",
                    nvim_lsp = "[LSP]",
                    buffer = "[Buffer]",
                    path = "[Path]",
                })[entry.source.name]
                return vim_item
            end,
        },
    })

    cmp.setup.cmdline(":", {
        mapping = cmp.mapping.preset.cmdline(),
        sources = cmp.config.sources({
            { name = "path" },
        }, {
            { name = "cmdline" },
        }),
    })
    experimental = {
        ghost_text = true,
    }
    end,
}
