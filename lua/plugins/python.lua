return {
  ---@module 'python'
  {
    "joshzcold/python.nvim",
    dependencies = {
        { "mfussenegger/nvim-dap" },
        { "mfussenegger/nvim-dap-python" },
        { "neovim/nvim-lspconfig" },
        { "L3MON4D3/LuaSnip" },
        { "nvim-neotest/neotest" },
        { "nvim-neotest/neotest-python" },
    },
    ---@type python.Config
    opts = { ---@diagnostic disable-line: missing-fields`
        python_lua_snippets = true
    },
  }
}
