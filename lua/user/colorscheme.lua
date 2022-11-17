-- Set the color scheme for Neovim
-- :help colorscheme
local colorscheme = 'mine-shaft'

local status_ok, _ = pcall(vim.cmd, 'colorscheme ' .. colorscheme)
if not status_ok then
  return
end
