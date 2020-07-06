# Defined in - @ line 1
function refresh --wraps='pkill -USR1 -x sxhkd && bash ~/.startup -r' --description 'alias refresh pkill -USR1 -x sxhkd && bash ~/.startup -r'
  pkill -USR1 -x sxhkd && bash ~/.startup -r $argv;
end
