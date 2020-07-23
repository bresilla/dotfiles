# Defined in - @ line 1
function dnsinuse --wraps='nmcli dev show | grep IP4.DNS' --description 'alias dnsinuse nmcli dev show | grep IP4.DNS'
  nmcli dev show | grep IP4.DNS $argv;
end
