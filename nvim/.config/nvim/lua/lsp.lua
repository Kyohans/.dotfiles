require('mason').setup({
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
    }
})

local servers = {
    'pylsp', 'gopls', 'lua_ls', 'rust_analyzer', 'clangd',
    'bashls', 'html', 'ltex', 'jsonls', 'marksman', 'cssls',
    'cmake', 'tsserver', 'yamlls',
}
require('mason-lspconfig').setup({
    -- A list of servers to automatically install if they're not already installed
    ensure_installed = servers,
})

local capabilities = require("cmp_nvim_lsp").default_capabilities()
local lspconfig = require'lspconfig'
for _, lsp in ipairs(servers) do
    lspconfig[lsp].setup({
            capabilities = capabilities,
    })
end
