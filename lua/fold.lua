local M = {}

function M.foldexpr(lnum)
  if vim.bo.filetype ~= "python" then
    return "0"
  end
  return vim.treesitter.foldexpr(lnum)
end

return M
