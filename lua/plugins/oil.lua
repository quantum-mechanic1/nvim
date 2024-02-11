return {
    "stevearc/oil.nvim",
    -- Optional dependencies
    dependencies = { "nvim-tree/nvim-web-devicons" },
    keys = {
        {
            "<leader>fe",
            function()
                require("oil").toggle_float()
            end,
            desc = "Open file explorer",
        },
    },
    opts = {
        float = {
            -- Padding around the floating window
            padding = 10,
            max_width = 0,
            max_height = 0,
            border = "rounded",
            win_options = {
                winblend = 0,
            },
            -- This is the config that will be passed to nvim_open_win.
            -- Change values here to customize the layout
            override = function(conf)
                return conf
            end,
        },
    },
}
