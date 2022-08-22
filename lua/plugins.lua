return require('packer').startup(
	function(use)
		use 'wbthomason/packer.nvim'
		use 'vim-scripts/xoria256.vim'
		use 'tpope/vim-fugitive'
		use 'mhinz/vim-signify'
		use 'vim-syntastic/syntastic'
		use {
			'nvim-telescope/telescope.nvim', branch = '0.1.x',
			requires = { {'nvim-lua/plenary.nvim'} }
		}
		use {
			'akinsho/toggleterm.nvim', tag = 'v2.*', config = function()
				require('toggleterm').setup({
					open_mapping = [[<c-\>]],
					direction = 'float'
				})
			end
		}
		use {
			'nvim-treesitter/nvim-treesitter',
			run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
			config = function()
				require('nvim-treesitter.configs').setup({
					auto_install = true,
					highlight = {
						enable = true
					}
				})
			end
		}
	end
)
