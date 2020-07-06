# Defined in - @ line 1
function umount --wraps='doas umount' --description 'alias umount doas umount'
  doas umount $argv;
end
