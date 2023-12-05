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
            "onsails/lspkind.nvim",
    },
   
    event = {"InsertEnter", "CmdlineEnter"}, -- Load the plugin when entering insert mode
    
    config = function()

    local cmp = require("cmp")
    local lspkind = require("lspkind")
    vim.opt.completeopt = { "menu", "menuone", "noselect" }

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
                format = lspkind.cmp_format({
    mode = "symbol_text",
    menu = ({
      buffer = "[Buffer]",
      nvim_lsp = "[LSP]",
      luasnip = "[LuaSnip]",
      nvim_lua = "[Lua]",
      latex_symbols = "[Latex]",
    })
  }),
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
