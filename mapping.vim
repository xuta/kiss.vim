""" Mapping
" go to end of line of insert mode by Ctrl-]
inoremap <C-]> <C-o>$
nnoremap <C-]> i<C-o>$

" easy split movement
nnoremap wh <C-w>h
nnoremap wj <C-w>j
nnoremap wk <C-w>k
nnoremap wl <C-w>l

" move on buffer
nnoremap bn :bnext<CR>
nnoremap bp :bprev<CR>

" deletes all buffers except those with unwritten changes
command! -nargs=0 BufferClear    :bufdo! bd

" tab
nnoremap to :tabnew<CR>
nnoremap tr :tabnew<CR>:Ranger<CR>
nnoremap tn :tabn<CR>
nnoremap tp :tabp<CR>


" fold/unfold by zz because za is not handy
nnoremap zz za

" undo by Ctrl-z
inoremap <C-z> <C-o>u

" select all by Ctr-a in normal mode
nnoremap <C-a> <esc>ggVG<CR>

" clear search highlight by Ctr-l
nnoremap <silent> <C-l> :nohl<CR>

" Remove all trailing whitespace by pressing Ctrl-s
nnoremap <C-s> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>

" close current file by Ctrl-w
nnoremap <C-w> :q<CR>

" tab to indent multiple lines in visual mode
vnoremap <tab> >
vnoremap <S-tab> <

" exit termimal mode
tnoremap <Esc> <C-\><C-n>


"" Nerdtree
nnoremap <leader>n :NERDTreeToggle<CR>


"" ranger
nnoremap <leader>r :Ranger<CR>


"" LeaderF
nnoremap <silent> <leader>f :Leaderf file<CR>
nnoremap <silent> <leader>s :Leaderf rg<CR>


"" tagbar
nnoremap <silent> <leader>t :TagbarToggle<CR>


"" vim-easymotion
map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)
map  n <Plug>(easymotion-next)
map  N <Plug>(easymotion-prev)


"" comfortable-motion
let g:comfortable_motion_no_default_key_mappings = 1
let g:comfortable_motion_impulse_multiplier = 1

" Ctrl-d to scroll down
nnoremap <silent> <C-d> :call comfortable_motion#flick(g:comfortable_motion_impulse_multiplier * winheight(0) * 2)<CR>
" Ctrl-u to scroll up
nnoremap <silent> <C-u> :call comfortable_motion#flick(g:comfortable_motion_impulse_multiplier * winheight(0) * -2)<CR>

" Scroll by mouse
noremap <silent> <ScrollWheelDown> :call comfortable_motion#flick(g:comfortable_motion_impulse_multiplier * winheight(0) * 2)<CR>
noremap <silent> <ScrollWheelUp>   :call comfortable_motion#flick(g:comfortable_motion_impulse_multiplier * winheight(0) * -2)<CR>
