# Defined in - @ line 1
function s --wraps='sudo -E nvim' --description 'alias s sudo -E nvim'
  sudo -E nvim $argv;
end
