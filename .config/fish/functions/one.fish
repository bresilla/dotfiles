# Defined in - @ line 1
function one --wraps='nix-shell --command zsh' --description 'alias one nix-shell --command zsh'
  nix-shell --command zsh $argv;
end
