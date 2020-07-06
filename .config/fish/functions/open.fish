# Defined in - @ line 1
function open --wraps='nohup mimeo $1 > /dev/null 2>&1 &!' --description 'alias open nohup mimeo $1 > /dev/null 2>&1 &!'
  nohup mimeo $1 > /dev/null 2>&1 &! $argv;
end
