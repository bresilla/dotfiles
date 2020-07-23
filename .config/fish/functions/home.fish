# Defined in - @ line 1
function home --wraps=home-manager --description 'alias home home-manager'
  home-manager  $argv;
end
