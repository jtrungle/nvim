return {
  {
    "linrongbin16/gitlinker.nvim",
    cmd = "GitLink",
    keys = {
      { "<leader>gy", "<cmd>GitLink<cr>", mode = { "n", "v" }, desc = "Yank git link" },
      { "<leader>gY", "<cmd>GitLink!<cr>", mode = { "n", "v" }, desc = "Open git link" },
    },
    config = function()
      local gl = require("gitlinker")
      gl.setup({
        remote = "origin",
        print_url = true,
        action = require("gitlinker.actions").clipboard,
        router = {
          browse = {
            ["^code%.droneshield%.com"] = require("gitlinker.routers").gitlab_browse,
          },
          blame = {
            ["^code%.droneshield%.com"] = require("gitlinker.routers").gitlab_blame,
          },
        },
      })
    end,
  },
}
