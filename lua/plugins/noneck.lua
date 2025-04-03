return {
  "shortcuts/no-neck-pain.nvim",
  config = function()
    require("no-neck-pain").setup({
      width = 100, -- Optional: set your desired centered width
    })
  end,
  event = "VeryLazy", -- Load lazily for performance
}
