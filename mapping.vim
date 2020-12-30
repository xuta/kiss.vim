""" Mapping

" go to end of line of insert mode by Ctrl-]
inoremap <C-]> <C-o>$
nnoremap <C-]> i<C-o>$

" go to end of line right before break line sign
nnoremap $ g_
vnoremap $ g_

" easy split movement
nnoremap sh <C-w>h
nnoremap sj <C-w>j
nnoremap sk <C-w>k
nnoremap sl <C-w>l


" move on buffer
nnoremap bn :bnext<CR>
nnoremap bp :bprev<CR>
nnoremap bd :bdelete<CR>


" tab
" new empty tab
nnoremap te :tabnew<CR>
" new tab with Ranger
nnoremap to :tabnew<CR>:RangerWorkingDirectory<CR>
" move to next tab
nnoremap tn :tabn<CR>
" move to previous tab
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
vnoremap <tab> >v<CR>
vnoremap <S-tab> <v<CR>


" exit termimal mode
tnoremap <Esc> <C-\><C-n>


" Nerdtree
nnoremap <leader>n :NERDTreeToggle<CR>


" Ranger
nnoremap <leader>r :RangerWorkingDirectory<CR>


" LeaderF
nnoremap <silent> <C-p> :Leaderf file<CR>
nnoremap <silent> <leader>f :Leaderf file<CR>
nnoremap <silent> <leader>s :Leaderf rg<CR>


" Tagbar
nnoremap <silent> <leader>t :TagbarToggle<CR>


" vim-easymotion
" Ctr-f to search with input from clipboard
map  <C-f> <Plug>(easymotion-sn)<C-R>*<CR>
omap <C-f> <Plug>(easymotion-tn)<C-R>*<CR>
" use easymotion instead of default search
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
  if exists('t:NERDTreeBufName') && bufwinnr(t:NERDTreeBufName) != -1
    silent NERDTreeClose
  endif

  NERDTreeCWD
  " unfocus NERDTree split
  wincmd w

endfunction

autocmd DirChanged * :call s:PostCd()


" mouse toggle
function! s:ToggleMouse()
  if &mouse == 'a'
    set mouse=
    echo "mouse mode is off"
  else
    set mouse=a
    echo "mouse mode is on"
  endif
endfunction

noremap <leader>m :call <SID>ToggleMouse()<CR>

" vim: ts=2 sw=2 et
