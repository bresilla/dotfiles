# Defined in - @ line 1
function dd --wraps='dd status=progress' --description 'alias dd dd status=progress'
 command dd status=progress $argv;
end
