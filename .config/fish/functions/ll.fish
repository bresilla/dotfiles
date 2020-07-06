# Defined in - @ line 1
function ll --wraps='exa -liSHF --header --git --group-directories-first --tree -L1' --description 'alias ll exa -liSHF --header --git --group-directories-first --tree -L1'
  exa -liSHF --header --git --group-directories-first --tree -L1 $argv;
end
