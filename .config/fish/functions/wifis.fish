# Defined in - @ line 1
function wifis --wraps='nmcli -t -f ssid dev wifi' --description 'alias wifis nmcli -t -f ssid dev wifi'
  nmcli -t -f ssid dev wifi $argv;
end
