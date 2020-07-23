# Defined in - @ line 1
function la --wraps='exa -laiSHF --header --git --group-directories-first --tree -L1' --description 'alias la exa -laiSHF --header --git --group-directories-first --tree -L1'
  exa -laiSHF --header --git --group-directories-first --tree -L1 $argv;
end
