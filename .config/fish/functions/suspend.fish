# Defined in - @ line 1
function suspend --wraps='systemctl suspend' --description 'alias suspend systemctl suspend'
  systemctl suspend $argv;
end
