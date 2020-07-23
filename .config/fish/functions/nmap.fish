# Defined in - @ line 1
function nmap --wraps='doas nmap' --description 'alias nmap doas nmap'
  doas nmap $argv;
end
