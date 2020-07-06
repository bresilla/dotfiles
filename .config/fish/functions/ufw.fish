# Defined in - @ line 1
function ufw --wraps='doas ufw' --description 'alias ufw doas ufw'
  doas ufw $argv;
end
