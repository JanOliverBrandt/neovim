set mouse=a
set nocompatible
set encoding=utf-8
set termguicolors
set hlsearch
set smartcase
set incsearch
"set cursorline
"set cursorcolumn
set autoindent
set nu
set relativenumber
set showmatch
set expandtab
set shiftwidth=4
set tabstop=4 softtabstop=4
set nowrap
set encoding=utf-8
set noerrorbells
set smartindent
set noswapfile
set undodir=~/.config/nvim/undodir
set undofile
set splitbelow
set splitright

syntax enable

runtime ./plug.vim

colorscheme onedarkpro
lua << END
require('lualine').setup {
  options = { theme  = 'onedarkpro' },
}
END
"Set my LeaderKey as Space
map <space> <Nop>
let mapleader=" "

"Leader mappings
nmap <Leader>s /
nnoremap <Leader>o o<Esc>

"Tab Movement and Handling
nnoremap th :tabfirst<CR>
nnoremap tk :tabnext<CR>
nnoremap tj :tabprev<CR>
nnoremap tl :tablast<CR>
nnoremap tt :tabedit<Space>
nnoremap tn :tabnew<CR>
nnoremap td :tabclose<CR>

"Pane Handling
nnoremap <leader>q :q<CR>
nnoremap <leader><Esc> :q!<CR>

"Split Movement and Handlingnoremap <C-J> <C-W><C-J>
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>

nnoremap <leader>u :UndotreeShow<CR>
nnoremap <silent> + :vertical resize +15<CR>
nnoremap <silent> - :vertical resize -15<CR>

"Always center cursor and End of Tex command to center
nnoremap j jzz
nnoremap k kzz
nnoremap G Gzz
nnoremap <S-j> <C-d>zz
nnoremap <S-k> <C-u>zz

" Buffer navigation shortcuts
nnoremap bn :bnext<CR>
nnoremap bv :bprev<CR>
nnoremap bd :bd<CR>

" noh - no highlight
noremap <esc> :noh <CR>
