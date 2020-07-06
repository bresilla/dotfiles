# Defined in - @ line 1
function ping --wraps=mtr --description 'alias ping mtr'
  mtr  $argv;
end
