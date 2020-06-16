" === FLOAT-TERM === "
noremap  <silent> <Insert>           :FloatermToggle<CR>
noremap! <silent> <Insert>           <Esc>:FloatermToggle<CR>
tnoremap <silent> <Insert>           <C-\><C-n>:FloatermToggle<CR>
let g:floaterm_position = 'center'
let g:floaterm_autoinsert = 1
let g:floaterm_width = float2nr(&columns/1.2)
let g:floaterm_height = float2nr(winheight(0)/1.5)
let g:floaterm_wintitle = 0
" let g:floaterm_borderchars = ['═', '║', '═', '║', '╔', '╗', '╝', '╚']
let g:floaterm_borderchars = ['─', '│', '─', '│', '┌', '┐', '┘', '└']
let g:floaterm_autoclose = 1


" === ASYNC RUNNER === "
let g:asyncrun_open = 6
function! s:runner_proc(opts)
  let curr_bufnr = floaterm#curr()
  if has_key(a:opts, 'silent') && a:opts.silent == 1
    call floaterm#hide()
  endif
  let cmd = 'cd ' . shellescape(getcwd())
  call floaterm#terminal#send(curr_bufnr, [cmd])
  call floaterm#terminal#send(curr_bufnr, [a:opts.cmd])
  stopinsert
  if &filetype == 'floaterm' && g:floaterm_autoinsert
    call floaterm#util#startinsert()
  endif
endfunction

let g:asyncrun_runner = get(g:, 'asyncrun_runner', {})
let g:asyncrun_runner.floaterm = function('s:runner_proc')
let g:asynctasks_term_pos = "floaterm"

noremap <silent><f5>        :AsyncTask file-run<cr>
noremap <silent><f7>        :AsyncTask file-build<cr>
tnoremap <silent><f7>       <C-\><C-n>:FloatermToggle<CR>
tnoremap <silent><f5>       <C-\><C-n>:FloatermToggle<CR>




" === VIMUX === "
let g:VimuxHeight = "30"


" === FZF ==="
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }
let g:fzf_history_dir = '~/.local/share/fzf-history'

map <C-f> :Files<CR>
map <C-g> :Rg<CR>
" Border color
let g:fzf_layout = { 'up':'~90%', 'window': { 'width': 0.8, 'height': 0.8,'yoffset':0.5,'xoffset': 0.5, 'highlight': 'Todo', 'border': 'sharp' } }
let $FZF_DEFAULT_OPTS = '--layout=reverse --info=inline'
let $FZF_DEFAULT_COMMAND="rg --files --hidden"

" Customize fzf colors to match your color scheme
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

"Get Files
command! -bang -nargs=? -complete=dir Files
    \ call fzf#vim#files(<q-args>, fzf#vim#with_preview({'options': ['--layout=reverse', '--info=inline']}), <bang>0)

" Get text in files with Rg
command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --column --line-number --no-heading --color=always --smart-case '.shellescape(<q-args>), 1,
  \   fzf#vim#with_preview(), <bang>0)

" Ripgrep advanced
function! RipgrepFzf(query, fullscreen)
  let command_fmt = 'rg --column --line-number --no-heading --color=always --smart-case %s || true'
  let initial_command = printf(command_fmt, shellescape(a:query))
  let reload_command = printf(command_fmt, '{q}')
  let spec = {'options': ['--phony', '--query', a:query, '--bind', 'change:reload:'.reload_command]}
  call fzf#vim#grep(initial_command, 1, fzf#vim#with_preview(spec), a:fullscreen)
endfunction

command! -nargs=* -bang RG call RipgrepFzf(<q-args>, <bang>0)

" Git grep
command! -bang -nargs=* GGrep
  \ call fzf#vim#grep(
  \   'git grep --line-number '.shellescape(<q-args>), 0,
  \   fzf#vim#with_preview({'dir': systemlist('git rev-parse --show-toplevel')[0]}), <bang>0)
