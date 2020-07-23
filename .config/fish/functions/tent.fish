# Defined in - @ line 1
function tent --wraps='doas tent' --description 'alias tent doas tent'
  doas tent $argv;
end
