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
nnoremap bd :bdelete<CR>


" tab
nnoremap te :tabnew<CR>  " new empty tab
nnoremap to :tabnew<CR>:RangerWorkingDirectory<CR>  " new tab with Ranger
nnoremap tn :tabn<CR>  " move to next tab
nnoremap tp :tabp<CR>  " move to previous tab


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


" Nerdtree
nnoremap <leader>n :NERDTreeToggle<CR>


" Ranger
nnoremap <leader>r :RangerWorkingDirectory<CR>


" LeaderF
nnoremap <silent> <leader>f :Leaderf file<CR>
nnoremap <silent> <leader>s :Leaderf rg<CR>


" Tagbar
nnoremap <silent> <leader>t :TagbarToggle<CR>


" vim-easymotion
map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)
map  n <Plug>(easymotion-next)
map  N <Plug>(easymotion-prev)


" Scroll by mouse
noremap <silent> <ScrollWheelDown> :call comfortable_motion#flick(g:comfortable_motion_impulse_multiplier * winheight(0) * 2)<CR>
noremap <silent> <ScrollWheelUp>   :call comfortable_motion#flick(g:comfortable_motion_impulse_multiplier * winheight(0) * -2)<CR>


" deletes all buffers except those with unwritten changes
command! -nargs=0 BufferClear    :bufdo! bd

" change and show working directory for Nerdtree with *cd
function! s:PostCd()
  execute 'NERDTreeCWD'
endfunction

autocmd DirChanged * :call s:PostCd()


" vim: ts=2 sw=2 et
