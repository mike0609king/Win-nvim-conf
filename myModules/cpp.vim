" C++ settings
"
" setup for c++ compilation
autocmd filetype cpp nnoremap <F5> :w <bar>!g++ -Wshadow -Wextra -Wall "%" -o "%:r" -g -D DEBUG <cr>
autocmd filetype cpp nnoremap <F4> :w <bar>!"%:r.exe"<cr>
autocmd filetype cpp nnoremap ,run :w <bar>!"%:r.exe"<cr>
