require('mason').setup({
    registries = {
        "github:mason-org/mason-registry",
        "github:Crashdummyy/mason-registry",
    },
	ensure_installed = {
		"ts_ls",
		"eslint-lsp",
    "roslyn"
	}
})
