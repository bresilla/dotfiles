# Defined in - @ line 1
function virsh --wraps='doas virsh' --description 'alias virsh doas virsh'
  doas virsh $argv;
end
