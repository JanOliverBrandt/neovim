" Install Vim-Plug automatically
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()
   " Basic plugins
    Plug 'preservim/nerdtree' "File Explorer Plugin
    Plug 'sonph/onehalf', { 'rtp': 'vim' } "Colorschme
    Plug 'olimorris/onedarkpro.nvim'
    Plug 'tpope/vim-fugitive' "Git Wrapper for nvim

    " NerdTree plugins
    Plug 'tiagofumo/vim-nerdtree-syntax-highlight' "Syntax Highlighting for nerdtree
    Plug 'ryanoasis/vim-devicons' "Icons for nerdtree

    " Fuzzy Finder Plugins
    Plug 'nvim-telescope/telescope.nvim' "Fuzzy finder for files, greps and buffers
    Plug 'nvim-lua/plenary.nvim' "Dependency of Telescope (contains lua functionality)

    " Code Highlighting and Auto Completion
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'} "Syntax Hightlihting for files
    Plug 'hrsh7th/nvim-cmp'
    Plug 'hrsh7th/cmp-nvim-lsp'
    Plug 'hrsh7th/cmp-buffer'
    Plug 'hrsh7th/cmp-path'
    Plug 'hrsh7th/cmp-cmdline'
    Plug 'saadparwaiz1/cmp_luasnip'
    Plug 'L3MON4D3/LuaSnip'
    Plug 'rafamadriz/friendly-snippets'

   " Language Server Protocol Plugins and related
    Plug 'neovim/nvim-lspconfig' "To configure nvim LSP functionality to LSP servers
    Plug 'williamboman/nvim-lsp-installer' "To install LSPs
    

    " Status line
"    Plug 'vim-airline/vim-airline'
"    Plug 'vim-airline/vim-airline-themes'
    Plug 'nvim-lualine/lualine.nvim'
    " If you want to have icons in your statusline choose one of these
    Plug 'kyazdani42/nvim-web-devicons'

    Plug 'numToStr/Comment.nvim'
    Plug 'JoosepAlviste/nvim-ts-context-commentstring'
call plug#end()
