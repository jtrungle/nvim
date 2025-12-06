return {
  {
    "linrongbin16/gitlinker.nvim",
    cmd = "GitLink",
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
