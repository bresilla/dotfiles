# Defined in - @ line 1
function upu --wraps='systemctl --user' --description 'alias upu systemctl --user'
  systemctl --user $argv;
end
