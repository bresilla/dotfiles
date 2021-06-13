local dap = require 'dap'

vimp.nnoremap('<M-r>',      [[<cmd>lua rebugger({"target/debug/fol"})<CR>]])
vimp.nnoremap('<M-c>',      [[<cmd>lua require'dap'.continue()<CR>]])
vimp.nnoremap('<M-b>',      [[<cmd>lua require'dap'.toggle_breakpoint()<CR>]])
vim.fn.sign_define('DapBreakpoint', {text='', texthl='DapBreakpointSign', linehl='', numhl=''})
vim.fn.sign_define('DapStopped', {text='', texthl='DapStopSign', linehl='', numhl=''})

dap.adapters.cpp = {
  type = 'executable',
  attach = {
    pidProperty = "pid",
    pidSelect = "ask"
  },
  command = 'lldb-vscode',
  name = "lldb"
}

dap.configurations.cpp = {
  {
    name = "lldb",
    type = "cpp",
    request = "launch",
    program = function()
      return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
    end,
    cwd = '${workspaceFolder}',
  },
}

function rebugger (args)
    local dap = require "dap"
    local last_gdb_config = {
        type = "cpp",
        name = args[1],
        request = "launch",
        program = table.remove(args, 1),
        args = args,
        cwd = vim.fn.getcwd(),
        env = {"NO_COLOR=1"},
        console = "integratedTerminal",
        integratedTerminal = true,
    }
    dap.run(last_gdb_config)
    dap.repl.open()
end


-- dap.adapters.lldb = function(cb, config)
--   local terminal = {
--       command = '/usr/bin/kitty';
--       args = {'-e'};
--   }
--   local adapter = dap.adapters.cpp
--   if config.request == 'attach' and config.program then
--     local full_args = {}
--     vim.list_extend(full_args, terminal.args or {})
--     table.insert(full_args, config.program)
--     vim.list_extend(full_args, config.args or {})
--     local opts = {
--       args = full_args,
--       detached = true
--     }
--     local handle
--     local pid_or_err
--     handle, pid_or_err = vim.loop.spawn(terminal.command, opts, function(code)
--       handle:close()
--       if code ~= 0 then
--         print('Terminal process exited', code, 'running', terminal.command, vim.inspect(full_args))
--       end
--     end)
--     if not handle then
--       print('Could not launch process', terminal.command)
--     else
--       print('Launched external terminal', pid_or_err)
--       while not config.pid  -- Adding a timeout or something might make sense
--       do
--         config.pid = tonumber(vim.fn.system({'pgrep', '-P', pid_or_err}))
--       end
--       print('Launched', config.program, 'within terminal with PID', config.pid)
--       config.program = nil
--     end
--   end
--   cb(adapter)
-- end

-- dap.adapters.cpp = {
--   type = 'executable',
--   command = 'lldb-vscode',
--   name = "lldb"
-- }

-- function rebugger (args)
--     local dap = require "dap"
--     local last_gdb_config = {
--       name = "Launch",
--       type = "lldb",
--       request = "attach",
--       program = function()
--         return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
--       end,
--       args = {}
--     }
--     dap.run(last_gdb_config)
--     dap.repl.open()
-- end




-- =================== UI ====================== --
require("dapui").setup()
--[[
require("dapui").setup({
  icons = {
    expanded = "⯆",
    collapsed = "⯈"
  },
  mappings = {
    -- Use a table to apply multiple mappings
    expand = {"<CR>", "<2-LeftMouse>"},
    open = "o",
    remove = "d",
    edit = "e",
  },
  sidebar = {
    elements = {
      -- You can change the order of elements in the sidebar
      "scopes",
      "breakpoints",
      "stacks",
      "watches"
    },
    width = 40,
    position = "left" -- Can be "left" or "right"
  },
  tray = {
    elements = {
      "repl"
    },
    height = 10,
    position = "bottom" -- Can be "bottom" or "top"
  }
  floating = {
    max_height = nil, -- These can be integers or a float between 0 and 1.
    max_width = nil   -- Floats will be treated as percentage of your screen.
  }
}) ]]
