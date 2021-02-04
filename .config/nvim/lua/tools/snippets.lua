require'snippets'.snippets = {
  _global = {
    todo = "TODO(trim): ";
    uname = function() return vim.loop.os_uname().sysname end;
    date = os.date;
    epoch = "${=os.time()}";
    note = [[NOTE(${=io.popen("id -un"):read"*l"}): ]];
  };
  cpp = {
    inc = [[#include "${=vim.fn.expand("%:t"):upper()}"]];
  };
}
