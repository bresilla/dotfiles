# Defined in - @ line 1
function ups --wraps='doas systemctl' --description 'alias ups doas systemctl'
  doas systemctl $argv;
end
