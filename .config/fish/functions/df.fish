# Defined in - @ line 1
function df --wraps='dfc -dTomw -p -/dev/loop,tmp,dev,run,one' --description 'alias df dfc -dTomw -p -/dev/loop,tmp,dev,run,one'
  dfc -dTomw -p -/dev/loop,tmp,dev,run,one $argv;
end
