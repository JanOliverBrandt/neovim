" Install Vim-Plug automatically
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()

" File related
    Plug 'kyazdani42/nvim-tree.lua' " File Expolorer
    Plug 'kyazdani42/nvim-web-devicons' " for file icons
    Plug 'nvim-telescope/telescope.nvim' "Fuzzy finder for files, greps and buffers
    Plug 'nvim-lua/plenary.nvim' "Dependency of Telescope (contains lua functionality)
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'} "Syntax Hightlihting for files

" Appearance
    Plug 'sonph/onehalf', { 'rtp': 'vim' } "Colorschme like VS Code
    Plug 'olimorris/onedarkpro.nvim' "Another Colorschime like VS Code
    Plug 'morhetz/gruvbox' " Colorschme that is good for your eyes
    Plug 'nvim-lualine/lualine.nvim' " Status Bar at the bottom
    Plug 'kyazdani42/nvim-web-devicons' " Icons for lualine
    Plug 'akinsho/bufferline.nvim' " Tabline for current buffers

" Git related
    Plug 'tpope/vim-fugitive' "Git Wrapper for nvim
    Plug 'lewis6991/gitsigns.nvim' " Adds git signs left to the text

" LSP and Auto Completion
    Plug 'williamboman/nvim-lsp-installer' "To install LSPs
    Plug 'neovim/nvim-lspconfig' "To configure nvim LSP functionality to LSP servers
    Plug 'hrsh7th/cmp-nvim-lsp' " Use LSP for Auto Completion
    Plug 'hrsh7th/nvim-cmp' " Auto Completion Plugin
    Plug 'hrsh7th/cmp-buffer' " User text for Auto Completion
    Plug 'hrsh7th/cmp-path' " Use paths for Auto Completion
    Plug 'hrsh7th/cmp-cmdline' " Use cmdline for Auto Completion
    Plug 'jose-elias-alvarez/null-ls.nvim' " Connect linter and formatter via LSP

" Nice addtional functionality
    Plug 'windwp/nvim-autopairs' " Handler for brackets, etc.

" Code Snippet related
    Plug 'saadparwaiz1/cmp_luasnip' " Use snippets for Auto Completion
    Plug 'L3MON4D3/LuaSnip' " Code Snippets for lua
    Plug 'rafamadriz/friendly-snippets' " General Snippets for coding

" Comments
    Plug 'numToStr/Comment.nvim' " Better commenting
    Plug 'JoosepAlviste/nvim-ts-context-commentstring' " Better commenting in combination with Comment.vim

" Terminal related
    Plug 'akinsho/toggleterm.nvim' " Toggle a terminal inside nvim
call plug#end()
