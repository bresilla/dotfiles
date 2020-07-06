# Defined in - @ line 1
function hotspot --wraps='doas hotspot' --description 'alias hotspot doas hotspot'
  doas hotspot $argv;
end
