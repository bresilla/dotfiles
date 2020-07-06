# Defined in - @ line 1
function hister --wraps='fc -lrn 0 | tux -e | clip' --description 'alias hister fc -lrn 0 | tux -e | clip'
  fc -lrn 0 | tux -e | clip $argv;
end
