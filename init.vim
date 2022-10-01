"source ~/scripts/autoinit/cocinit.vim

set number
set linebreak
set autochdir "changes current directory automatically

" Escape shortcats
inoremap jk <Esc>
cnoremap jk <Esc>
tnoremap jk <C-\><C-N>

" Open/close terminal
nnoremap <silent> <A-\> :sp<CR>:terminal<CR>:startinsert<CR>
tnoremap <silent> <A-\> <C-\><C-N>:bd!<CR>

" Making vim enter term-mode when open terminal buffer
autocmd BufWinEnter,WinEnter * if &buftype == 'terminal' | silent! normal i | endif

" Navigation in buffers
nnoremap <silent> [b :bprevious<CR>
nnoremap <silent> ]b :bnext<CR>
nnoremap <silent> [B :bfirst<CR>
nnoremap <silent> ]B :blast<CR>
tnoremap <silent> [b <C-\><C-N>:bprevious<CR>
tnoremap <silent> ]b <C-\><C-N>:bnext<CR>

" Navigation in tabs
nnoremap <silent> [t :tabp<CR>
nnoremap <silent> ]t :tabn<CR>
nnoremap <silent> [T :tabfirst<CR>
nnoremap <silent> ]T :tablast<CR>
tnoremap <silent> [t <C-\><C-N>:tabp<CR>
tnoremap <silent> ]t <C-\><C-N>:tabn<CR>

" Navigation in windows
nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l
tnoremap <A-h> <C-\><C-N><C-w>h
tnoremap <A-j> <C-\><C-N><C-w>j
tnoremap <A-k> <C-\><C-N><C-w>k
tnoremap <A-l> <C-\><C-N><C-w>l

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
tnoremap <C-h> <C-\><C-N><C-w>h
tnoremap <C-j> <C-\><C-N><C-w>j
tnoremap <C-k> <C-\><C-N><C-w>k
tnoremap <C-l> <C-\><C-N><C-w>l

" Navigation in lines
nnoremap k gk
nnoremap gk k
nnoremap j gj
nnoremap gj j
nnoremap 0 g0
nnoremap g0 0
nnoremap ^ g^
nnoremap g^ ^
nnoremap $ g$
nnoremap g$ $

vnoremap k gk
vnoremap gk k
vnoremap j gj
vnoremap gj j
vnoremap 0 g0
vnoremap g0 0
vnoremap ^ g^
vnoremap g^ ^
vnoremap $ g$
vnoremap g$ $

" Autocmds
autocmd Bufnewfile,Bufread *.py source ~/.config/nvim/autoload/pythoninit.vim
autocmd BufNewFile,BufRead *.cpp source ~/.config/nvim/autoload/cppinit.vim
autocmd BufNewFile,BufRead *.vim source ~/.config/nvim/autoload/vimscriptinit.vim
augroup assembler
	autocmd!
	autocmd BufNewFile,BufRead *.asm source ~/.config/nvim/autoload/assemblerinit.vim
	autocmd BufNewFile,BufRead *.ASM source ~/.config/nvim/autoload/assemblerinit.vim
augroup END


" Using russian keyboard in normal mode
set langmap=ёйцукенгшщзхъфывапролджэячсмитьбюЁЙЦУКЕНГШЩЗХЪФЫВАПРОЛДЖЭЯЧСМИТЬБЮ;`qwertyuiop[]asdfghjkl\\;'zxcvbnm\\,.~QWERTYUIOP{}ASDFGHJKL:\\"ZXCVBNM<>

nnoremap Ж :
nnoremap Н Y
nnoremap з p
nnoremap ф a
nnoremap щ o
nnoremap г u
nnoremap З P

call plug#begin()
"Plug 'neoclide/coc.nvim', {'branch': 'release'}
"Plug 'roxma/nvim-completion-manager'
"Plug 'SirVer/ultisnips'
"Plug 'honza/vim-snippets'
call plug#end()
let g:ycm_filetype_blacklist = {
	\ 'asm': 1,
	\ 'ASM': 1,
	\ }
