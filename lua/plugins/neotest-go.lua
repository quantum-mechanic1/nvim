return {
    "nvim-neotest/neotest",
    opts = {
        -- Can be a list of adapters like what neotest expects,
        -- or a list of adapter names,
        -- or a table of adapter names, mapped to adapter configs.
        -- The adapter will then be automatically loaded with the config.
        -- adapters = {},
        -- Example for loading neotest-go with a custom config
        adapters = {
            ["neotest-go"] = {
                experimental = {
                    test_table = true,
                },
                args = { "-tags=integration" },
            },
        },
        status = { virtual_text = true },
    },
}
