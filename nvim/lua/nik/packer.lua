vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.5',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  use('theprimeagen/vim-be-good')

  use { "ellisonleao/gruvbox.nvim" }

  use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate'})

  use('theprimeagen/harpoon')
  
  use('mbbill/undotree')
  
  use('tpope/vim-fugitive')

  use {
	  'nvim-lualine/lualine.nvim',
	  requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }

  use {
    'numToStr/Comment.nvim',
  }

  use {
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v3.x',
	  requires = {
		  --- Uncomment the two plugins below if you want to manage the language servers from neovim
		   {'williamboman/mason.nvim'},
		   {'williamboman/mason-lspconfig.nvim'},
		
		  -- LSP Support
		  {'neovim/nvim-lspconfig'},
		  -- Autocompletion
		  {'hrsh7th/nvim-cmp'},
		  {'hrsh7th/cmp-nvim-lsp'},
		  {'hrsh7th/cmp-buffer'},
		  {'hrsh7th/cmp-path'},
		  {'saadparwaiz1/cmp_luasnip'},
		  {'hrsh7th/cmp-nvim-lua'},
		  {'rafamadriz/friendly-snippets'},
		  {'L3MON4D3/LuaSnip'},
	  }
  }

  use("github/copilot.vim")
end)
