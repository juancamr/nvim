---@type ChadrcConfig
local M = {}
local highlights = require "custom.highlights"

M.ui = {
  theme = "github_dark",
  transparency = false,
  tabufline = { enabled = false },
  nvdash = {
    load_on_startup = true,
  },
  hl_override = highlights.override,
  hl_add = highlights.add,
}

M.plugins = "custom.plugins"

M.mappings = require "custom.mappings"

return M
