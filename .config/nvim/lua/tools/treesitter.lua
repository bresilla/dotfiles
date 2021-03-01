--------------------------------- TREESITTER  -----------------------------------------
require('nvim-treesitter.configs').setup {
  highlight = {
    enable = true,
    disable = {'typescript.tsx', 'typescript', 'tsx'}
  },

  -- indent = { enable = true },

  incremental_selection = {
    enable = true,
    keymaps = { -- mappings for incremental selection (visual mappings)
      init_selection = '<M-w>',    -- maps in normal mode to init the node/scope selection
      node_incremental = '<M-w>',  -- increment to the upper named parent
      scope_incremental = '<M-e>', -- increment to the upper scope (as defined in locals.scm)
      node_decremental = '<M-C-w>',  -- decrement to the previous node
    },
  },

  refactor = {
    highlight_definitions = {enable = true},
    highlight_current_scope = {enable = false},
    smart_rename = {
      enable = true,
      keymaps = {
        smart_rename = 'grr',
      },
    },
    navigation = {
    enable = true,
      keymaps = {
        goto_definition = 'gnd', -- mapping to go to definition of symbol under cursor
        list_definitions = 'gnD', -- mapping to list all definitions in current file
      },
    },
  },
}


