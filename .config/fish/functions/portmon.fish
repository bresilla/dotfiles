# Defined in - @ line 1
function portmon --wraps='doas lsof -Pnl -i4' --description 'alias portmon doas lsof -Pnl -i4'
  doas lsof -Pnl -i4 $argv;
end
