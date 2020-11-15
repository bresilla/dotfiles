# Defined in - @ line 1
function sv --wraps='sudo -E nvim' --description 'alias sv sudo -E nvim'
  sudo -E nvim $argv;
end
