# Defined in - @ line 1
function btrfs --wraps='doas btrfs' --description 'alias btrfs doas btrfs'
  doas btrfs $argv;
end
