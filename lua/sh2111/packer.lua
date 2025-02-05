-- Ensure Packer is in the correct runtime path
vim.opt.rtp:prepend('C:\\Users\\Lenovo\\AppData\\Local\\nvim\\site\\pack\\packer\\start\\packer.nvim')

-- Load Packer
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  
  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.8',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
}

use ({
	'rose-pine/neovim',
	as = 'rose-pine',
	config = function()
		vim.cmd('colorscheme rose-pine')
	end
})

use ('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
use ('nvim-treesitter/playground')
use ('theprimeagen/harpoon')
use ('mbbill/undotree')
use ('tpope/vim-fugitive')
use {'neovim/nvim-lspconfig'}         -- LSP Config plugin
  use {'hrsh7th/nvim-cmp'}              -- Autocompletion plugin
  use {'hrsh7th/cmp-nvim-lsp'}          -- LSP source for nvim-cmp
  use {'williamboman/mason.nvim'}       -- Mason to manage LSP servers, linters, etc.
  use {'williamboman/mason-lspconfig.nvim'}  -- Mason integration with nvim-lspconfig
use {'VonHeikemen/lsp-zero.nvim'}
-- Add more plugins here
end)

