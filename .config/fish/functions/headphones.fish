# Defined in - @ line 1
function headphones --wraps='pactl set-sink-port 0 analog-output-headphones' --description 'alias headphones pactl set-sink-port 0 analog-output-headphones'
  pactl set-sink-port 0 analog-output-headphones $argv;
end
