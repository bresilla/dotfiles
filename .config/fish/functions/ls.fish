# Defined in - @ line 1
function ls --wraps='exa -F' --description 'alias ls exa -F'
  exa -F $argv;
end
