
" ============================ "
"           BEHAVIOR           "
" ============================ "

" Indentation
filetype plugin indent on
" Indentation spaces
set shiftwidth=2
" Tabs size
set tabstop=2
" Use space chars instead of tabs
set expandtab
" Mouse support, useful for scrollable overlays
set mouse=a


" ============================ "
"             LOOK             "
" ============================ "

" Line numbers
set number
" Syntax highlighting
syntax on

" --- Colors ---

" Deep blue background for visual mode
highlight Visual ctermbg=17 ctermfg=white
" Cyan for string literals
highlight String ctermfg=Cyan guifg=Cyan
" Green for comments
highlight Comment ctermfg=green
" Dark gray background for popup menu
highlight Pmenu ctermbg=237 ctermfg=white
" Deep blue background for the selected
" item in the popup menu
highlight PmenuSel ctermbg=17 ctermfg=white


" ============================= "
"            PLUGINS            "
" ============================= "

call plug#begin('~/.vim/plugged')
" Closing chars
Plug 'jiangmiao/auto-pairs'
" Distraction-free mode
Plug 'junegunn/goyo.vim'
" Tables
Plug 'dhruvasagar/vim-table-mode'
" Git
Plug 'tpope/vim-fugitive'
" Surrounding
Plug 'tpope/vim-surround'
" Fuzzy finder
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
" LaTeX
Plug 'lervag/vimtex'
" Markdown
Plug 'plasticboy/vim-markdown'
" Syntax highlighting
Plug 'sheerun/vim-polyglot'
" Completion
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()


" ============================== "
"            SETTINGS            " 
" ============================== "

" --- Folding ---

" Java
autocmd FileType java setlocal foldmethod=syntax foldlevel=1

" --- Format ---

" Disable auto-comment
autocmd FileType * setlocal formatoptions-=cro

" Completion
let g:coc_global_extensions = [
  \ 'coc-snippets',
  \ 'coc-tsserver',
  \ 'coc-eslint',
  \ 'coc-prettier',
  \ 'coc-python',
  \ 'coc-json',
  \ 'coc-html',
  \ 'coc-css',
  \ 'coc-java',
  \]

" --- Goyo ---

" Dimensions
let g:goyo_width = 120
let g:goyo_margin_top = 3
let g:goyo_margin_bottom = 3

" --- Markdown ---

" Frontmatter
let g:vim_markdown_frontmatter = 1
" Conceal markdown syntax
let g:vim_markdown_conceal = 2
let g:vim_markdown_conceal_code_blocks = 1
autocmd FileType markdown setlocal conceallevel=2


" ============================= "
"            MAPPING            "
" ============================= "

" Leader
map <SPACE> <leader>

" Reload
nnoremap <Leader>r :source $MYVIMRC<CR>

" Duplicate line
nnoremap <C-d> yyp

" Navigation
nnoremap <C-n> :GFiles<CR>
nnoremap <C-p> :Buffers<CR>

" Tables
nnoremap <Leader>table :TableModeToggle<CR>

" Git
nnoremap <Leader>st :Git st<CR>
nnoremap <Leader>br :Git br<CR>
nnoremap <Leader>df :Git diff<CR>

" Goyo
nnoremap <C-g> :Goyo<CR>

" Completion
"" Use <Tab> to pick item
inoremap <silent><expr> <Tab> pumvisible() ? coc#_select_confirm() : "\<Tab>"

" --- Jump-to ---

" Go to definition
nmap <silent> gd <Plug>(coc-definition)
" Go to type definition
nmap <silent> gy <Plug>(coc-type-definition)
" Go to implementation
nmap <silent> gi <Plug>(coc-implementation)
" Go to references
nmap <silent> gr <Plug>(coc-references)

