local servers = { 'clangd', 'bashls' }

for _, lsp in ipairs(servers) do
  require('lspconfig')[lsp].setup{}
end

