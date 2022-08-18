
" LaTeX settings
set grepprg=grep\ -nH\ $*	" recommended from website
let g:tex_flavor='latex' 	" recommended from website
let g:Imap_FreezeImap=1		" no auto mapping from which I dont know...
autocmd filetype tex set wm=2	" sets a wrap margin of 2 characters from the right window border
autocmd filetype tex setlocal indentexpr=
" LaTeX mappings
autocmd filetype tex nnoremap <F5> :w<bar>:b1<bar>:!pdflatex "%"<cr>:b#<cr>
autocmd filetype tex nnoremap <F4> :w<bar>:b1<bar>:!pdflatex "%"<cr>:b#<cr>
autocmd filetype tex nnoremap ,open :!zathura "%:r".pdf &<cr>
autocmd filetype tex set spell
autocmd filetype tex set spell spelllang=en_us,de

" Latex snippets mappings

autocmd filetype tex nnoremap ,main :-1read C:\Users\mike-\AppData\Local\nvim\snippets\LaTeX\main.tex <bar> :!mkdir myDefaultPackageSetup && xcopy "C:\Users\mike-\AppData\Local\nvim\snippets\LaTeX\myDefaultPackageSetup\" ".\myDefaultPackageSetup" /E/H && mkdir includings<cr><cr>
autocmd filetype tex nnoremap ,bmain :-1read C:\Users\mike-\AppData\Local\nvim\snippets\LaTeX\bmain.tex <bar> :!mkdir myDefaultPackageSetup && xcopy "C:\Users\mike-\AppData\Local\nvim\snippets\LaTeX\myDefaultPackageSetup\" ".\myDefaultPackageSetup" /E/H && mkdir includings<cr><cr>
