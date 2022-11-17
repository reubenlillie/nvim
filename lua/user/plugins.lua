-- Add plugins to Neovim
-- :help plugin

-- Shorten function call
local fn = vim.fn

-- Automatically install and set up `packer`
-- https://github.com/wbthomason/packer.nvim#bootstrapping
local ensure_packer = function()
  local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

-- Call `packer`
local status_ok, packer = pcall(require, 'packer')
if not status_ok then
  return
end

-- Configure `packer`
-- https://github.com/wbthomason/packer.nvim#custom-initialization
packer.init {
  display = {
    open_fn = function()
      return require('packer.util').float { border = 'none' }
    end,
  },
  git = {
    clone_timeout = 300, -- Timeout, in seconds, for git clones
  },
}

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  -- Call plugins below this line
  use 'numToStr/Comment.nvim'
  use 'nvim-tree/nvim-tree.lua'
  use 'nvim-tree/nvim-web-devicons'
  use 'reubenlillie/mine-shaft'
  -- Call plugins above this line
  if packer_bootstrap then
    require('packer').sync()
  end
end)
