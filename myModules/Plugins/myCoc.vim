" ################################################
" extentions
" remove: CocUninstall <extention-name>
" CocInstall coc-pyright
"\ 'coc-python',
"\ 'coc-vimtex',
" \ 'coc-clangd'
" ################################################
"  
set signcolumn=yes
set updatetime=300

let g:coc_global_extensions = [
    \ 'coc-pairs',
    \ 'coc-eslint',
    \ 'coc-json',
    \ 'coc-python',
    \ 'coc-html',
    \ 'coc-css',
    \ 'coc-cssmodules',
    \ 'coc-tsserver',
    \ 'coc-flutter',
    \]

" coc-pairs
"
let b:coc_pairs_disabled = ['<']
autocmd FileType tex let b:coc_pairs = [["$", "$"], ["(", ")"], ["[", "]"], ["{", "}"]]
set runtimepath+=~/.vim/plugged/coc.nvim/plugin/coc.vim

" coc-<language> --> completion
"
" use <tab> for trigger completion and navigate to the next complete item
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1):
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr> <cr> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction


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

" GoTo code navigation 
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" toggle diagnostics
nnoremap <silent> [d :call CocAction('diagnosticToggle')<CR>

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)
