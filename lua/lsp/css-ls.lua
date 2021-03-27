-- npm install -g vscode-css-languageserver-bin
require'lspconfig'.cssls.setup {
    cmd = {
        "node", DATA_PATH .. "/lspinstall/css/vscode-css/css-language-features/server/dist/node/cssServerMain.js",
        "--stdio"
    },
	filetypes = { "css", "scss", "less", "javascriptreact", "javascript"},
    on_attach = require'lsp'.common_on_attach,
    settings = {documentFormatting = false}
}
