# Defined in - @ line 1
function findip --wraps='doas arp-scan --localnet' --description 'alias findip doas arp-scan --localnet'
  doas arp-scan --localnet $argv;
end
