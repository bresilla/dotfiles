# Defined in - @ line 1
function netspeed --wraps='wget --output-document=/dev/null http://speedtest.wdc01.softlayer.com/downloads/test500.zip' --description 'alias netspeed wget --output-document=/dev/null http://speedtest.wdc01.softlayer.com/downloads/test500.zip'
  wget --output-document=/dev/null http://speedtest.wdc01.softlayer.com/downloads/test500.zip $argv;
end
