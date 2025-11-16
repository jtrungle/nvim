return {
  "nvim-lualine/lualine.nvim",
  opts = function(_, opts)
    local function root_with_icon()
      local root = require("lazyvim.util").root.get()
      if not root then
        return ""
      end
      local icon = "📁 "  -- <-- change your icon here
      return icon .. vim.fn.fnamemodify(root, ":~")
    end

    -- Add to lualine_c (left side)
    -- table.insert(opts.sections.lualine_c, root_with_icon)

    -- Or right side:
    table.insert(opts.sections.lualine_x, root_with_icon)
  end,
}
