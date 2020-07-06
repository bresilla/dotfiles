# Defined in - @ line 1
function bandwhich --wraps='doas bandwhich' --description 'alias bandwhich doas bandwhich'
  doas bandwhich $argv;
end
