# Defined in - @ line 1
function openports --wraps='doas netstat -tulpn' --description 'alias openports doas netstat -tulpn'
  doas netstat -tulpn $argv;
end
