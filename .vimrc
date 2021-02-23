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
Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
Plug 'antoinemadec/coc-fzf'

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
Plug 'psf/black', { 'branch': 'stable' }
Plug 'relastle/vim-nayvy'
Plug 'Vimjas/vim-python-pep8-indent'
Plug 'vim-syntastic/syntastic'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'dense-analysis/ale'
Plug 'nvie/vim-flake8'
Plug 'integralist/vim-mypy'
Plug 'prabirshrestha/async.vim'
Plug 'prabirshrestha/vim-lsp'
" Plug 'ryanolsonx/vim-lsp-python'

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
let g:mapleader=","
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
    \ set textwidth=80 |
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
autocmd ColorScheme * hi pythonComment ctermfg=2 gui=italic guifg=#408010

set updatetime=100

" let g:multi_cursor_use_default_mapping=0

" Default mapping
" let g:multi_cursor_start_word_key      = '<C-n>'
" let g:multi_cursor_select_all_word_key = '<A-n>'
" let g:multi_cursor_start_key           = 'g<C-n>'
" let g:multi_cursor_select_all_key      = 'g<A-n>'
let g:multi_cursor_next_key            = '<C-n>'
let g:multi_cursor_prev_key            = '<C-p>'
let g:multi_cursor_skip_key            = '<C-x>'
let g:multi_cursor_quit_key            = '<Esc>'

" Quickly find and open a file in the CWD

" Quickly find and open a recently opened file

" Quickly find and open a buffer

"COC

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
" position. Coc only does snippet and additional edit on confirm.
" <cr> could be remapped by other vim plugin, try `:verbose imap <CR>`.
if exists('*complete_info')
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)


" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current buffer.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" Remap <C-f> and <C-b> for scroll float windows/popups.
if has('nvim-0.4.0') || has('patch-8.2.0750')
  nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
  inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
  inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
  vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
endif

" Use CTRL-S for selections ranges.
" Requires 'textDocument/selectionRange' support of language server.
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Mappings for CoCList
" Show all diagnostics.
nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>

" ALE
function! ALELSPMappings()
    let lsp_found=0
    for linter in ale#linter#Get(&filetype)
        if !empty(linter.lsp) && ale#lsp_linter#CheckWithLSP(bufnr(''), linter)
            let lsp_found=1
        endif
    endfor
    if (lsp_found)
        nnoremap <buffer> K :ALEDocumentation<cr>
        nnoremap <buffer>  <leader>r :ALEFindReferences -split<cr>
        nnoremap <buffer> D :ALEGoToDefinition -tab<cr>
        nnoremap <buffer> Y :ALEGoToTypeDefinition<cr>
        nnoremap <buffer> H :ALEHover<cr>

        setlocal omnifunc=ale#completion#OmniFunc
    endif
endfunction

augroup ALELSPMappings
  autocmd BufRead,FileType * call ALELSPMappings()
augroup END

let g:ale_lint_on_text_changed = 0
let g:ale_lint_on_save = 1
let g:ale_lint_on_enter = 0
let g:ale_sign_error = '●'
let g:ale_sign_warning = '.'
let g:ale_completion_enabled = 1
let g:ale_completion_autoimport = 1
let g:ale_float_preview = 0
let g:ale_list_vertical = 1
let g:ale_keep_list_window_open = 0
let g:ale_open_list = 0
let g:ale_list_window_size = 30
let g:ale_popup_menu_enabled = 1
let g:ale_set_highlights = 1
let g:ale_set_loclist = 0
highlight! ALEWarning ctermbg=DarkMagenta
nmap <silent> <C-E> <Plug>(ale_previous_wrap)
nmap <silent> <C-e> <Plug>(ale_next_wrap)

" function! LinterStatus() abort
"     let l:counts = ale#statusline#Count(bufnr(''))
"     let l:all_errors = l:counts.error + l:counts.style_error
"     let l:all_non_errors = l:counts.total - l:all_errors
"     return l:counts.total == 0 ? 'OK' : printf(
"         \   '%d⨉ %d⚠ ',
"         \   all_non_errors,
"         \   all_errors
"         \)
" endfunction

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


map <C-LeftMouse> <leader>g

" if executable('pyls')
"     au User lsp_setup call lsp#register_server({
"         \ 'name': 'pyls',
"         \ 'cmd': {server_info->['pyls']},
"         \ 'whitelist': ['python'],
"         \ })
" endif
" set statusline+=%=
" set statusline+=\ %{LinterStatus()}


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

map <space>p :Files<CR>
map <space>F :Rg<CR>
map <space>b :Buffers<CR>

let g:coc_fzf_preview= 'right:50%'
let g:fzf_preview_window = ['right:50%', 'ctrl-/']
let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.9 } }
let $FZF_DEFAULT_OPTS="--ansi --preview-window 'right:60%' --layout reverse --margin=1,4 --preview 'bat --color=always --style=header,grid --line-range :300 {}'"
let $FZF_DEFAULT_COMMAND = 'rg --files --ignore-case --hidden -g "!{.pyc,.git,node_modules,vendor}/*"'
command! -bang -nargs=? -complete=dir Files
     \ call fzf#vim#files(<q-args>, fzf#vim#with_preview(), <bang>0)


" set foldmethod=indent
" nnoremap <space> za
" vnoremap <space> zf


