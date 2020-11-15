# Defined in - @ line 1
function todo --wraps=taskwarrior-tui --description 'alias todo taskwarrior-tui'
  taskwarrior-tui  $argv;
end
