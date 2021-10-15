vim.g.VM_default_mappings = 0
vim.g.VM_mouse_mappings = 1
vim.api.nvim_exec([[
    let g:VM_maps = {}
    let g:VM_maps['Find Under']         = '<M-d>'
    let g:VM_maps['Find Subword Under'] = '<M-d>'
    let g:VM_maps["Add Cursor Down"]    = '<M-S-Down>'
    let g:VM_maps["Add Cursor Up"]      = '<M-S-Up>'
    let g:VM_maps["Add Cursor At Pos"]  = '<M-i>'
    let mytext = 'hello world'
]], true)

