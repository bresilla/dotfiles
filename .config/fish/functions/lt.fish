# Defined in - @ line 1
function lt --wraps='exa -liSHF --header --git --tree -L2' --description 'alias lt exa -liSHF --header --git --tree -L2'
  exa -liSHF --header --git --tree -L2 $argv;
end
