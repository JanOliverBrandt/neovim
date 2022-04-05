
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

"
" nmap <leader>gs :G<CR>
" nmap <leader>gc :G commit<CR>
" nmap <leader>gm :G merge 
" nmap <leader>go :G checkout 
" nmap <leader>gj :diffget //3<CR>
" nmap <leader>gf :diffget //2<CR>
" nmap <leader>gr wdv<CR><leader>k:q!<CR><leader>l
" nmap <leader>gl :G log<CR>
