return {
  "mfussenegger/nvim-dap",
  config = function()
    local dap = require("dap")

    dap.adapters.godot = {
      type = "server",
      host = "127.0.0.1",
      port = 6006,
    }

    dap.configurations.gdscript = {
      {
        type = "godot",
        request = "launch",
        name = "Launch scene",
        project = "${workspaceFolder}",
        launch_scene = true,
      },
      {
        type = "godot",
        request = "attach",
        name = "Attach to running Godot instance",
        host = "127.0.0.1",
        port = 6006,
      },
    }
  end,
}
