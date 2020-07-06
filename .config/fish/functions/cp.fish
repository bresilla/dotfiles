# Defined in - @ line 1
function cp --wraps='acp -g -r -p' --description 'alias cp acp -g -r -p'
  acp -g -r -p $argv;
end
