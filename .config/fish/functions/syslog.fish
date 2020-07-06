# Defined in - @ line 1
function syslog --wraps='bat "/var/log/syslog"' --description 'alias syslog bat "/var/log/syslog"'
  bat "/var/log/syslog" $argv;
end
