# Defined in - @ line 1
function s --wraps='sudo -E' --description 'alias s sudo -E'
  sudo -E $argv;
end
