local M = {}

-- Default configuration
M.options = {
  mappings = {
    relative = "<leader>cy",
    absolute = "<leader>cY",
  },
  context_format = "# %s:%s", -- format for context: "# filepath:line", example: "# /path/to/file:123"
  trim_lines = false,
  copy_content = true, -- when false, only copies path and line range without content
}

-- Setup function to merge user config with defaults
function M.setup(opts)
  if opts then
    M.options = vim.tbl_deep_extend("force", M.options, opts)
  end
end

return M
