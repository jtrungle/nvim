# 💤 LazyVim

A starter template for [LazyVim](https://github.com/LazyVim/LazyVim).
Refer to the [documentation](https://lazyvim.github.io/installation) to get started.

## gitlinker
```
## home/johnny/.local/share/nvim/lazy/gitlinker.nvim/lua/gitlinker/actions.lua
  elseif vim.fn.executable("powershell.exe") > 0 then
    vim.fn.jobstart({ "powershell.exe", "-Command", "Start-Process", url })
```

