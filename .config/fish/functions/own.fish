# Defined in - @ line 1
function own --wraps='doas chown -R $USER:$USER' --description 'alias own doas chown -R $USER:$USER'
  doas chown -R $USER:$USER $argv;
end
