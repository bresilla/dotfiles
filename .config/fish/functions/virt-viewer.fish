# Defined in - @ line 1
function virt-viewer --wraps='doas virt-viewer' --description 'alias virt-viewer doas virt-viewer'
  doas virt-viewer $argv;
end
