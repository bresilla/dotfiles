# Defined in - @ line 1
function branch --wraps='doas pacman-mirrors --api -S' --description 'alias branch doas pacman-mirrors --api -S'
  doas pacman-mirrors --api -S $argv;
end
