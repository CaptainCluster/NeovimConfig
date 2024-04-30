require('packer').startup(function()
	    use "wbthomason/packer.nvim"                                    -- Plugin manager
        use "tpope/vim-commentary"                                      -- Commenting out lines
        use "tpope/vim-surround"                                        -- For surroundings
        use "vim-airline/vim-airline"                                   -- Status/tabline
        use "ryanoasis/vim-devicons"                                    -- Icons for the vim-airline
        use "nvim-treesitter/nvim-treesitter"                           -- Parser
        use "rafi/awesome-vim-colorschemes"                             -- The color scheme
        use "preservim/nerdtree"                                        -- The file system explorer
        use "tc50cal/vim-terminal"                                      -- Terminal for vim
        use "ap/vim-css-color"                                          -- CSS color highlighting
        use "nvim-lua/plenary.nvim"                                     -- Telescope plug #1
        use "nvim-telescope/telescope.nvim"                             -- Telescope plug #2
        use "rafamadriz/friendly-snippets"                              -- Snippets
        use 
        {
            'nvimdev/dashboard-nvim',
            event = 'VimEnter',
            config = function()
            require('dashboard').setup {
            }
            end,
            requires = {'nvim-tree/nvim-web-devicons'}
        }

        use 'folke/lsp-colors.nvim'
        use 
        {
            "folke/trouble.nvim",
            requires = { "nvim-tree/nvim-web-devicons" },
            config = function()
                end
        }

        -- Auto-completion for brackets, etc
        use "m4xshen/autoclose.nvim"
        require("autoclose").setup({})

        -- For suggestions while coding. Needs nodejs
        use {'neoclide/coc.nvim', branch = 'release'}
end)

vim.cmd("colorscheme jellybeans")




