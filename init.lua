-- Config used by CaptainCluster
-- https://github.com/CaptainCluster 
-- This config is under GNU GPL Version 3.0 license

-- 	Dependencies:
--  Packer: git clone --depth 1 https://github.com/wbthomason/packer.nvim\ ~/.local/share/nvim/site/pack/packer/start/packer.nvim
--  npm & nodejs ... sudo apt install npm nodejs (Debian-based distros)  

-- The plugs | Run PackerInstall to install, and PackerSync to update
require('packer').startup(function()
	use "wbthomason/packer.nvim"				-- Plugin manager
	use "tpope/vim-commentary"					-- Commenting out lines
	use "tpope/vim-surround"					-- For surroundings
	use "vim-airline/vim-airline"				-- Status/tabline	
	use "ryanoasis/vim-devicons"				-- Icons for the vim-airline
	use "nvim-treesitter/nvim-treesitter"		-- Parser
	use "rafi/awesome-vim-colorschemes"			-- The color scheme
	use "preservim/nerdtree"					-- The file system explorer
	use "tc50cal/vim-terminal"					-- Terminal for vim
	use "ap/vim-css-color"						-- CSS color highlighting
	use "nvim-lua/plenary.nvim"					-- Telescope plug #1
	use "nvim-telescope/telescope.nvim"			-- Telescope plug #2
	use "rafamadriz/friendly-snippets"			-- Snippets

	-- Dashboard for Nvim
	use {
		'nvimdev/dashboard-nvim',
		event = 'VimEnter',
		config = function()
		require('dashboard').setup {
		}
		end,
		requires = {'nvim-tree/nvim-web-devicons'}
	}

	-- Auto-completion for brackets, etc
	use "m4xshen/autoclose.nvim"
	require("autoclose").setup({})

	-- For suggestions while coding. Requires nodejs
	use {'neoclide/coc.nvim', branch = 'release'}
end)

require("coc_config")

vim.opt.syntax			= "on"
vim.opt.number			= true
vim.opt.relativenumber 	= true
vim.opt.autoindent		= true
vim.opt.smarttab		= true

vim.opt.tabstop		= 4
vim.opt.shiftwidth	= 4
vim.opt.softtabstop	= 4

-- Defining key mappings
vim.api.nvim_set_keymap("n", "<leader>w", ":w<CR>", {noremap = true})
vim.api.nvim_set_keymap("n", "<C-n>", ":NERDTree<CR>", {noremap = true})
vim.api.nvim_set_keymap("n", "<C-t>", ":NERDTreeToggle<CR>", {noremap = true})
vim.api.nvim_set_keymap("n", "<C-f>", ":NERDTreeFind<CR>", {noremap = true})
vim.api.nvim_set_keymap("n", "<Leader>ff", "<cmd>Telescope find_files<CR>", { noremap = true, silent = true })	-- \ff 

vim.cmd("colorscheme jellybeans")

-- Dashboard settings
vim.g.dashboard_default_executive = "telescope"
vim.g.dashboard_custom_header = {
    ' ',
    ' '
}
vim.api.nvim_set_keymap("n", "<leader>bd", ":Dashboard<CR>", { noremap = true, silent = true })
vim.cmd('autocmd FileType dashboard :normal <CR>')
