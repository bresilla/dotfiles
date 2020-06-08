" === FLOAT-TERM === "
noremap  <silent> <Insert>           :FloatermToggle<CR>
noremap! <silent> <Insert>           <Esc>:FloatermToggle<CR>
tnoremap <silent> <Insert>           <C-\><C-n>:FloatermToggle<CR>
let g:floaterm_position = 'center'
let g:floaterm_autoinsert = 1
let g:floaterm_width = float2nr(&columns/1.5)
let g:floaterm_height = float2nr(winheight(0)/1.5)
let g:floaterm_wintitle = 0
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

function! FloatNormalKeys()
    noremap <silent><f5> :AsyncTask file-run<cr>
    noremap <silent><f9> :AsyncTask file-build<cr>
endfunction
function! FloatMappedKeys()
    noremap  <silent><f5>           :FloatermToggle<CR>
    noremap  <silent><f9>           :FloatermToggle<CR>
endfunction
autocmd BufEnter * :call FloatNormalKeys()
autocmd BufEnter TERMINAL :call FloatMappedKeys()
