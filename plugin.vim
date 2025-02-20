""" vim-plug
let g:PLUGIN_HOME=expand(stdpath('data') . '/plugged')

call plug#begin(g:PLUGIN_HOME)

" File managers
" bclose is required by ranger.vim
Plug 'rbgrouleff/bclose.vim'
Plug 'francoiscabrol/ranger.vim'
Plug 'preservim/nerdtree', { 'on': ['NERDTreeToggle', 'NERDTreeCWD'] }
Plug 'Yggdroot/LeaderF', { 'do': './install.sh' }

" Git
Plug 'mhinz/vim-signify'

" highlighting
Plug 'numirias/semshi', { 'do': ':UpdateRemotePlugins' }

" handy and smart editor
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-commentary'
Plug '907th/vim-auto-save'
Plug 'jeffkreeftmeijer/vim-numbertoggle'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'Yggdroot/indentLine'
Plug 'easymotion/vim-easymotion'

" status line, color and theme
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'mhinz/vim-startify'
Plug 'ayu-theme/ayu-vim'
Plug 'ryanoasis/vim-devicons'
Plug 'tpope/vim-markdown'

" UX
Plug 'yuttie/comfortable-motion.vim'

if executable('ctags')
    Plug 'majutsushi/tagbar', { 'on': ['TagbarToggle'] }
endif

call plug#end()


""" setting


" ranger
let g:bclose_no_plugin_maps = 1
let g:ranger_map_keys = 0
let g:NERDTreeHijackNetrw = 0
let g:ranger_replace_netrw = 1


" LeaderF
let g:Lf_WindowPosition = 'popup'
let g:Lf_PreviewInPopup = 1
let g:Lf_PreviewResult = {
    \ 'File': 1,
    \ 'Rg': 1,
    \}
let g:Lf_UseCache = 0
let g:Lf_WildIgnore = {
    \ 'dir': ['.git', '__pycache__', '.DS_Store'],
    \ 'file': ['*.exe', '*.dll', '*.so', '*.o', '*.pyc', '*.jpg', '*.png',
    \ '*.gif', '*.db', '*.tgz', '*.tar.gz', '*.gz', '*.zip', '*.bin', '*.pptx',
    \ '*.xlsx', '*.docx', '*.pdf', '*.tmp', '*.wmv', '*.mkv', '*.mp4',
    \ '*.rmvb']
    \}


" vim-auto-save
let g:auto_save = 1
let g:auto_save_events = ['InsertLeave', 'TextChanged']
let g:auto_save_silent = 0


" vim-signify
let g:signify_vcs_list = [ 'git' ]


" vim-airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'
let g:airline#extensions#hunks#non_zero_only = 1
let g:airline_highlighting_cache = 1


" ayu
let g:airline_theme='ayu_mirage'
let ayucolor="mirage"
colorscheme ayu


" vim-devicons
let g:webdevicons_enable = 1


" vim-markdown
let g:markdown_fenced_languages = ['html', 'python', 'bash=sh', 'sql', 'vim']
let g:markdown_syntax_conceal = 0


" comfortable-motion
let g:comfortable_motion_no_default_key_mappings = 1
let g:comfortable_motion_impulse_multiplier = 1


" vim: ts=2 sw=2 et
