call plug#begin('~/.vim/plugged')

" Grep
Plug 'mileszs/ack.vim'
" indentpython
Plug 'vim-scripts/indentpython.vim'

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Multiple Plug commands can be written in a single line using | separators
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
" Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
" Nerdtree"
Plug 'preservim/nerdtree'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'preservim/nerdcommenter'
Plug 'wagnerf42/vim-clippy'
Plug 'stsewd/fzf-checkout.vim'

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', {'do': './install --all' }
Plug 'junegunn/fzf.vim'

" Color Schema
Plug 'morhetz/gruvbox'

" Theme
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'itchyny/lightline.vim'

" Git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'Xuyuanp/nerdtree-git-plugin'

" Comment
Plug 'tpope/vim-commentary'

" Surround
Plug 'tpope/vim-surround'

" Multiple Cursors
Plug 'terryma/vim-multiple-cursors'

" Python
Plug 'relastle/vim-nayvy'
Plug 'Vimjas/vim-python-pep8-indent'
Plug 'vim-syntastic/syntastic'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'dense-analysis/ale'
Plug 'nvie/vim-flake8'
Plug 'integralist/vim-mypy'

" Expand
Plug 'terryma/vim-expand-region'

" Iden
Plug 'Yggdroot/indentLine'

" Tag bar
Plug 'preservim/tagbar'

" Unmanaged plugin (manually installed and updated)
Plug '~/my-prototype-plugin'

Plug 'ryanoasis/vim-devicons'
" Initialize plugin system
call plug#end()
let g:mapleader= " "
" set termguicolors
set nobackup
set noswapfile

set cursorline!
set lazyredraw
set synmaxcol=128
syntax sync minlines=256
set tabstop=4
set softtabstop=4
set shiftwidth=4

" python PEP8
au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix

let python_highlight_all=1


au BufNewFile,BufRead *.js, *.html, *.css
    \ set tabstop=2  |
    \ set softtabstop=2 |
    \ set shiftwidth=2

" Flagging Unnecessary Whitespace
au BufRead, BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

" like zsh select  by tab
set wildmenu
set expandtab
noremap <Tab> >gV
noremap <S-Tab> <gV


set clipboard=unnamed
set mouse=a
vmap <D-c> "+y
set nocompatible
set backspace=indent,eol,start


set hlsearch!
nnoremap <F3> :set hlsearch!<CR>
" hi Normal guibg=NONE ctermbg=NONE
" hi Normal ctermbg=NONE guibg=NONE
hi! Normal ctermbg=NONE guibg=NONE
hi! NonText ctermbg=NONE guibg=NONE guifg=NONE ctermfg=NONE

" Tagbar
nmap <F8> :TagbarToggle<CR>

set encoding=utf-8
set number
set relativenumber


let g:NERDTreeGitStatusIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }

" autocmd VimEnter * NERDTree
" autocmd VimEnter * wincmd p
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" NERD Tree mappings
map <leader>nn :NERDTreeToggle<cr>
map <leader>nb :NERDTreeFromBookmark
map <leader>nf :NERDTreeFind<cr>
let NERDTreeShowHidden=1
noremap <Leader>w <C-w>

let g:gitgutter_sign_modified = '✹'
let g:gitgutter_sign_removed = '-'
let g:gitgutter_sign_removed_first_line = '-'
let g:gitgutter_sign_modified_removed = '-'
let g:airline_powerline_fonts = 1

set guifont=Hack\ Nerds\ Font:h13
set background=dark
syntax on
autocmd vimenter * ++nested colorscheme gruvbox
let g:gruvbox_italic=1

let g:indentLine_enabled = 1
let g:indentLine_char_list = ['|', '¦', '┆', '┊', ' ⎸']

set completeopt-=preview
set completeopt=menu,menuone,preview,noselect,noinsert

autocmd FileType python setlocal completeopt-=preview
autocmd InsertEnter,InsertLeave * set cul!
" autocmd ColorScheme * hi pythonComment ctermfg=2 gui=italic guifg=#408010

set updatetime=100

" let g:multi_cursor_use_default_mapping=0

" Default mapping
" let g:multi_cursor_start_word_key      = '<C-n>'
" let g:multi_cursor_select_all_word_key = '<A-n>'
" let g:multi_cursor_start_key           = 'g<C-n>'
" let g:multi_cursor_select_all_key      = 'g<A-n>'
" let g:multi_cursor_next_key            = '<C-n>'
" let g:multi_cursor_prev_key            = '<C-p>'
" let g:multi_cursor_skip_key            = '<C-x>'
" let g:multi_cursor_quit_key            = '<Esc>'

" Quickly find and open a file in the CWD

" Quickly find and open a recently opened file
map <leader>p :MRU<CR>

" Quickly find and open a buffer
map <leader>b :CtrlPBuffer<cr>

map <C-f> :CtrlP<cr>
map <C-b> :CtrlPBuffer<cr>
"COC

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
" position. Coc only does snippet and additional edit on confirm.
" <cr> could be remapped by other vim plugin, try `:verbose imap <CR>`.
if exists('*complete_info')
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif

" ALE
let g:ale_lint_on_text_changed = 0
let g:ale_lint_on_save = 1

set omnifunc=ale#completion#OmniFunc
nmap <silent> <C-E> <Plug>(ale_previous_wrap)
nmap <silent> <C-e> <Plug>(ale_next_wrap)

let g:ale_lint_on_enter = 1
let g:ale_sign_error = '●'
let g:ale_sign_warning = '.'
let g:ale_completion_enabled = 1
let g:ale_completion_autoimport = 1

" gd GD GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

function ALELSPMappings()
    let lsp_found=0
    for linter in ale#linter#Get(&filetype)
        if !empty(linter.lsp) && ale#lsp_linter#CheckWithLSP(bufnr(''), linter)
            let lsp_found=1
        endif
    endfor
    if (lsp_found)
        nnoremap <buffer> K :ALEDocumentation<cr>
        nnoremap <buffer> gr :ALEFindReferences<cr>
        nnoremap <buffer> gd :ALEGoToDefinition<cr>
        nnoremap <buffer> gy :ALEGoToTypeDefinition<cr>
        nnoremap <buffer> gh :ALEHover<cr>

        setlocal omnifunc=ale#completion#OmniFunc
    endif
endfunction
autocmd BufRead,FileType * call ALELSPMappings()
map <C-LeftMouse> <leader>g


function! LinterStatus() abort
    let l:counts = ale#statusline#Count(bufnr(''))
    let l:all_errors = l:counts.error + l:counts.style_error
    let l:all_non_errors = l:counts.total - l:all_errors
    return l:counts.total == 0 ? 'OK' : printf(
        \   '%d⨉ %d⚠ ',
        \   all_non_errors,
        \   all_errors
        \)
endfunction

  let g:ale_completion_symbols = {
  \ 'text': '',
  \ 'method': '',
  \ 'function': '',
  \ 'constructor': '',
  \ 'field': '',
  \ 'variable': '',
  \ 'class': '',
  \ 'interface': '',
  \ 'module': '',
  \ 'property': '',
  \ 'unit': 'unit',
  \ 'value': 'val',
  \ 'enum': '',
  \ 'keyword': 'keyword',
  \ 'snippet': '',
  \ 'color': 'color',
  \ 'file': '',
  \ 'reference': 'ref',
  \ 'folder': '',
  \ 'enum member': '',
  \ 'constant': '',
  \ 'struct': '',
  \ 'event': 'event',
  \ 'operator': '',
  \ 'type_parameter': 'type param',
  \ '<default>': 'v'
  \ }


set statusline+=%=
set statusline+=\ %{LinterStatus()}


function! GitStatus()
  let [a,m,r] = GitGutterGetHunkSummary()
  return printf('+%d ~%d -%d', a, m, r)
endfunction
set statusline+=%{GitStatus()}

if !has('gui_running')
  map "in Insert mode, type Ctrl+v Alt+n here" <A-n>
endif
augroup MultipleCursorsSelectionFix
    autocmd User MultipleCursorsPre  if &selection ==# 'exclusive' | let g:multi_cursor_save_selection = &selection | set selection=inclusive | endif
    autocmd User MultipleCursorsPost if exists('g:multi_cursor_save_selection') | let &selection = g:multi_cursor_save_selection | unlet g:multi_cursor_save_selection | endif
augroup END

func! Multiple_cursors_before()
  if deoplete#is_enabled()
    call deoplete#disable()
    let g:deoplete_is_enable_before_multi_cursors = 1
  else
    let g:deoplete_is_enable_before_multi_cursors = 0
  endif
endfunc
func! Multiple_cursors_after()
  if g:deoplete_is_enable_before_multi_cursors
    call deoplete#enable()
  endif
endfunc

map <Leader>p :Files<CR>
map <Leader>F :Rg<CR>

let g:fzf_preview_window = ['right:50%', 'ctrl-/']
let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.9 } }
let $FZF_DEFAULT_OPTS="--ansi --preview-window 'right:60%' --layout reverse --margin=1,4 --preview 'bat --color=always --style=header,grid --line-range :300 {}'"
let $FZF_DEFAULT_COMMAND = 'rg --files --ignore-case --hidden -g "!{.pyc,.git,node_modules,vendor}/*"'
command! -bang -nargs=? -complete=dir Files
     \ call fzf#vim#files(<q-args>, fzf#vim#with_preview(), <bang>0)

nmap <D-/> gcc
