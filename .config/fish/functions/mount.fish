# Defined in - @ line 1
function mount --wraps='doas mount' --description 'alias mount doas mount'
  doas mount $argv;
end
