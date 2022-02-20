-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Stop irritating me VIM
  use 'windwp/nvim-autopairs'

  -- Post-install/update hook with neovim command
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

  -- Best colorscheme(s) known to man
  use {'sainnhe/gruvbox-material', as = "gruvbox-material"}
  use {'ishan9299/nvim-solarized-lua', as = "solarized"}

  -- Fuzzy finder
  use {
      'nvim-telescope/telescope.nvim',
      requires = { {'nvim-lua/plenary.nvim'} }
  }
  use { "nvim-telescope/telescope-file-browser.nvim" }

  -- Add some colours to ur dang life
  use 'norcalli/nvim-colorizer.lua'

  -- File tree
  use {
    'kyazdani42/nvim-tree.lua',
      requires = {
          'kyazdani42/nvim-web-devicons', -- optional, for file icon
      },
  }

  -- A sexy tabline and statusline
  use {
      'nvim-lualine/lualine.nvim',
      requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }
  use {
      'romgrk/barbar.nvim',
      requires = {'kyazdani42/nvim-web-devicons'}
  }

  -- Git Shizz
  use 'tpope/vim-fugitive'
  use {
      'lewis6991/gitsigns.nvim',
      requires = {
	  'nvim-lua/plenary.nvim'
      },
      config = function()
	  require('gitsigns').setup()
      end
      -- tag = 'release' -- To use the latest release
  }

  -- Ezz block comments
  use 'numToStr/Comment.nvim'

  -- TMUX can go to sleep
  use {
      'rmagatti/auto-session',
      config = function()
	  require('auto-session').setup {
	      log_level = 'info',
	      auto_session_root_dir = vim.fn.stdpath('config')..'/sessions/',
	      auto_save_enabled = false,
	      auto_restore_enabled = false,
	      pre_save_cmds = {"NvimTreeClose"},
	      post_restore_cmds = {"NvimTreeRefresh"}

	  }
      end
  }
  use {
      'rmagatti/session-lens',
      requires = {'rmagatti/auto-session', 'nvim-telescope/telescope.nvim'},
      config = function()
	  require('session-lens').setup({})
      end
  }

  -- Indent guides
  use "lukas-reineke/indent-blankline.nvim"

  -- Sweeet autocompletion
  use 'neovim/nvim-lspconfig'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-vsnip'
  use 'hrsh7th/vim-vsnip'
  use 'williamboman/nvim-lsp-installer'

end)
