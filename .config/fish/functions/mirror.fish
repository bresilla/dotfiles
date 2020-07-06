# Defined in - @ line 1
function mirror --wraps='doas pacman-mirrors --fasttrack 5 && doas pacman -Syyu' --description 'alias mirror doas pacman-mirrors --fasttrack 5 && doas pacman -Syyu'
  doas pacman-mirrors --fasttrack 5 && doas pacman -Syyu $argv;
end
