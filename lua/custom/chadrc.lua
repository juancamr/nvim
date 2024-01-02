---@type ChadrcConfig
local M = {}

M.ui = {
  theme = "github_light",
  transparency = false,
  tabufline = { enabled = false },
  nvdash = {
    load_on_startup = true,
  },
}
M.plugins = "custom.plugins"
M.mappings = require "custom.mappings"

return M
