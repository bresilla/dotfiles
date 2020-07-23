# Defined in - @ line 1
function rm --wraps='rm -rf' --description 'alias rm rm -rf'
 command rm -rf $argv;
end
