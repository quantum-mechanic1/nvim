return {
    "neovim/nvim-lspconfig",
    opts = {
        servers = {
            cssls = {},
            htmx = {
                filetypes_include = {
                    "html",
                    "templ",
                },
            },
            templ = {},
            tailwindcss = {},
        },
    },
}
