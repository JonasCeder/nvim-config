return {
    "williamboman/mason.vim",
    dependecies = {
        "williamboman/mason-lspconfig",
    },
    config = function ()
        require("mason").setup()

        -- require("mason-lspconfig").setup()
        vim.diagnostics.config({
            virtual_text = true
        })
        vim.lsp.enable("lua_ls")
    end
}
