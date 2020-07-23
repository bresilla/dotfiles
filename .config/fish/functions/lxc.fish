# Defined in - @ line 1
function lxc --wraps='doas lxc' --description 'alias lxc doas lxc'
  doas lxc $argv;
end
