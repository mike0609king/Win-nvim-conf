" C settings
"
" setup for c compilation
autocmd filetype c nnoremap <F5> :w <bar>!clang "%" -o "%:r" -lm<cr>
autocmd filetype c nnoremap <F4> :w <bar>!./"%:r"<cr>
