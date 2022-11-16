-- Setup Comment
-- https://github.com/numToStr/Comment.nvim#%EF%B8%8F-setup

-- Call Comment plugin
local status_ok, comment = pcall(require, 'Comment')
if not status_ok then
  return
end

comment.setup()
