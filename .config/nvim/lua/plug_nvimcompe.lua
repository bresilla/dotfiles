require'compe'.setup {
  enabled = true;
  autocomplete = true;
  debug = false;
  min_length = 1;
  preselect = 'enable';
  throttle_time = 80;
  source_timeout = 200;
  incomplete_delay = 400;
  max_abbr_width = 100;
  max_kind_width = 100;
  max_menu_width = 100;

  source = {
    path = { menu = '[PAT]'};
    buffer = { menu = '[BUF]'};
    calc = false;
    vsnip = false;
    vsnip = false;
    nvim_lsp = { menu = '[LSP]', priority = 9 } ;
    nvim_lua = false;
    spell = false;
    tags = false;
    snippets_nvim = false;
    treesitter = { menu = '[TRE]'};
    tabnine = { menu = '[TAB]', priority = 5 };
  };
}

--------------------------------- KEYBINDINSGS  -----------------------------------------
vimp.inoremap({'silent', 'expr'}, '<Esc>', function()
    if vim.fn.pumvisible() == 1 then
        return  vim.fn['compe#close']()
    else
        return [[<Esc>]]
    end
end)
vimp.inoremap({'silent', 'expr'}, '<CR>', function()
    local npairs = require('nvim-autopairs')
    if vim.fn.pumvisible() ~= 0  then
        if vim.fn.complete_info()["selected"] ~= -1 then
            vim.fn["compe#confirm"]()
            return npairs.esc("<c-y>")
        else
            vim.defer_fn(function()
                vim.fn["compe#confirm"]("<cr>")
            end, 20)
            return npairs.esc("<c-n>")
        end
    else
        return npairs.check_break_line_char()
    end
    -- if vim.fn.pumvisible() == 1 then
    --     vim.fn['compe#confirm']()
    --     return [[<C-y>]]
    -- else
    --     return [[<CR>]]
    -- end
end)
vimp.inoremap({'silent', 'expr'}, '<Down>', function()
    if vim.fn.pumvisible() == 1 then
        return [[<C-n>]]
    else
        return [[<Down>]]
    end
end)
vimp.inoremap({'silent', 'expr'}, '<Up>', function()
    if vim.fn.pumvisible() == 1 then
        return [[<C-p>]]
    else
        return [[<Up>]]
    end
end)


require('vim.lsp.protocol').CompletionItemKind = {
      '  Text';          -- = 1
      '  Function';      -- = 2;
      '  Method';        -- = 3;
      '  Constructor';   -- = 4;
      '  Field';         -- = 5;
      '  Variable';      -- = 6;
      '  Class';         -- = 7;
      '  Interface';     -- = 8;
      '  Module';        -- = 9;
      '  Property';      -- = 10;
      '  Unit';          -- = 11;
      '  Value';         -- = 12;
      '  Enum';          -- = 13;
      '  Keyword';       -- = 14;
      '  Snippet';       -- = 15;
      '  Color';         -- = 16;
      '  File';          -- = 17;
      '  Reference';     -- = 18;
      '  Folder';        -- = 19;
      '  EnumMember';    -- = 20;
      '  Constant';      -- = 21;
      '  Struct';        -- = 22;
      '  Event';         -- = 23;
      '  Operator';      -- = 24;
      '  TypeParameter'; -- = 25;
}
