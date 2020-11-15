# Defined in - @ line 1
function eject --wraps='udisksctl power-off -b' --description 'alias eject udisksctl power-off -b'
  udisksctl power-off -b $argv;
end
