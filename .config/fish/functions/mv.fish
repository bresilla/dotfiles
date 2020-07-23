# Defined in - @ line 1
function mv --wraps='amv -g -u' --description 'alias mv amv -g -u'
  amv -g -u $argv;
end
