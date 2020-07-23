# Defined in - @ line 1
function pissh --wraps='ssh -R 52698:127.0.0.1:52698 trim@$pi -X' --description 'alias pissh ssh -R 52698:127.0.0.1:52698 trim@$pi -X'
  ssh -R 52698:127.0.0.1:52698 trim@$pi -X $argv;
end
