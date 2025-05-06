return {
  "neovim/nvim-lspconfig",
  opts = {
    setup = {
      emmet_language_server = function(_, opts)
        require("lspconfig").emmet_language_server.setup({
          filetypes = {
            "css",
            "eruby",
            "html",
            "javascript",
            "javascriptreact",
            "less",
            "sass",
            "scss",
            "pug",
            "typescriptreact",
            "heex",
          },
          init_options = {
            includeLanguages = { heex = "html" },
            excludeLanguages = {},
            extensionsPath = {},
            preferences = {},
            showAbbreviationSuggestions = true,
            showExpandedAbbreviation = "always",
            showSuggestionsAsSnippets = false,
            syntaxProfiles = {},
            variables = {},
          },
        })
        return true
      end,
    },
  },
}
