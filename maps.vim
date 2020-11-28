let mapleader = " "

"Reinicia vim y da source el mismo file"
nmap <F5> :source ~/.config/nvim/init.vim<CR>
vmap <F5> :source ~/.config/nvim/init.vim<CR>

"no se utilizan las flechas en modo normal"
noremap <up> <nop>
noremap <down> <nop>
noremap <left> <nop>
noremap <right> <nop>

"guardar archivo"
nmap <leader>w :w<CR>
nmap <leader>q :q<CR>

"resize de ventanas"
nnoremap <silent> <right> :vertical resize +3<CR>
nnoremap <silent> <left> :vertical resize -3<CR>
nnoremap <silent> <up> :resize -3<CR>
nnoremap <silent> <down> :resize +3<CR>


"abrit terminal
vnoremap <c-t> :split<CR>:ter<CR>
nnoremap <c-t> :split<CR>:ter<CR>

"moverse entre los buffer"
nnoremap <leader>l :bnext<CR>
nnoremap <leader>h :bprevious<CR>

"cerrar buffer"
nnoremap <leader>ww :bdelete<CR>

"Crear un nuevo buffer"
nnoremap <leader>t :tabe<CR>

"hacer un split vertical"
nnoremap <leader>r :vsp
nnoremap <leader>b :sp

nmap <leader>fs <Plug>(easymotion-s2)
nmap <leader>nt :NERDTreeFind<CR>
noremap <leader>f :CocSearch
noremap <leader>ff :File

nmap <F6> :NERDTreeToggle<CR>

nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv
