# Defined in - @ line 1
function lsblk --wraps='lsblk -f' --description 'alias lsblk lsblk -f'
 command lsblk -f $argv;
end
