return {
  -- add gruvbox
  { "samharju/synthweave.nvim" },

  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "synthweave",
    },
  },
}
