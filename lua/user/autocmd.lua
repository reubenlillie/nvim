-- Define autocommands for Neovim
-- :help autocmd

-- Restart neovim when saving plugins.lua so `packer` can manage any changes
-- https://github.com/wbthomason/packer.nvim
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]
