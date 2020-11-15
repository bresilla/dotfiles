# Defined in - @ line 1
function lc --wraps='wc -l' --description 'alias lc wc -l'
  wc -l $argv;
end
