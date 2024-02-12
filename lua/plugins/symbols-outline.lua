return {
    "simrat39/symbols-outline.nvim",
    keys = { { "<leader>cs", "<cmd>SymbolsOutline<cr>", desc = "Symbols Outline" } },
    cmd = "SymbolsOutline",
    opts = function()
        local Config = require("lazyvim.config")
        local defaults = require("symbols-outline.config").defaults
        local opts = {
            symbols = {
                File = { icon = "", hl = "@text.uri" },
                Module = { icon = "", hl = "@namespace" },
                Namespace = { icon = "", hl = "@namespace" },
                Package = { icon = "", hl = "@namespace" },
                Class = { icon = "", hl = "@type" },
                Method = { icon = "ƒ", hl = "@method" },
                Property = { icon = "", hl = "@method" },
                Field = { icon = "", hl = "@field" },
                Constructor = { icon = "", hl = "@constructor" },
                Enum = { icon = "", hl = "@type" },
                Interface = { icon = "", hl = "@type" },
                Function = { icon = "", hl = "@function" },
                Variable = { icon = "", hl = "@constant" },
                Constant = { icon = "", hl = "@constant" },
                String = { icon = "", hl = "@string" },
                Number = { icon = "#", hl = "@number" },
                Boolean = { icon = "", hl = "@boolean" },
                Array = { icon = "", hl = "@constant" },
                Object = { icon = "", hl = "@type" },
                Key = { icon = "", hl = "@type" },
                Null = { icon = "", hl = "@type" },
                EnumMember = { icon = "", hl = "@field" },
                Struct = { icon = "", hl = "@type" },
                Event = { icon = "", hl = "@type" },
                Operator = { icon = "", hl = "@operator" },
                TypeParameter = { icon = "", hl = "@parameter" },
                Component = { icon = "", hl = "@function" },
                Fragment = { icon = "", hl = "@constant" },
            },
            symbol_blacklist = {},
        }
        local filter = Config.kind_filter

        if type(filter) == "table" then
            filter = filter.default
            if type(filter) == "table" then
                for kind, symbol in pairs(defaults.symbols) do
                    opts.symbols[kind] = {
                        icon = Config.icons.kinds[kind] or symbol.icon,
                        hl = symbol.hl,
                    }
                    if not vim.tbl_contains(filter, kind) then
                        table.insert(opts.symbol_blacklist, kind)
                    end
                end
            end
        end
        return opts
    end,
}
