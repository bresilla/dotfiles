# Defined in - @ line 1
function chroot --wraps='doas chroot' --wraps='doas schroot' --description 'alias chroot doas schroot'
  doas schroot $argv;
end
