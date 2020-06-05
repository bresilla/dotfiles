" === FLOAT-TERM === "
call dein#add('voldikss/vim-floaterm')		  "terminal
noremap  <silent> <Insert>           :FloatermToggle<CR>
noremap! <silent> <Insert>           <Esc>:FloatermToggle<CR>
tnoremap <silent> <Insert>           <C-\><C-n>:FloatermToggle<CR>
let g:floaterm_position = 'center'
let g:floaterm_autoinsert = 1
let g:floaterm_width = float2nr(&columns/1.5)
let g:floaterm_height = float2nr(winheight(0)/1.5)
let g:floaterm_wintitle = 0
let g:floaterm_autoclose = 1
" FLOAT FZF
" function! floaterm#wrapper#fzf#(cmd) abort
" let s:fzf_tmpfile = tempname()
" let cmd = a:cmd . ' > ' . s:fzf_tmpfile
" return [cmd, {'on_exit': funcref('s:fzf_callback')}, v:false]
" endfunction

" function! s:fzf_callback(...) abort
" if filereadable(s:fzf_tmpfile)
" let filenames = readfile(s:fzf_tmpfile)
" if !empty(filenames)
" if has('nvim')
" call floaterm#window#hide_floaterm(bufnr('%'))
" endif
" for filename in filenames
" execute g:floaterm_open_command . ' ' . fnameescape(filename)
" endfor
" endif
" endif
" endfunction
command! FZF FloatermNew fzf


" === VIMUX === "
call dein#add('benmills/vimux')                 "run shell comands in a tmux pane
