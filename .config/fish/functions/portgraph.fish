# Defined in - @ line 1
function portgraph --wraps='doas lsof -n -F | ./lsofgraph | dot -Tjpg > /tmp/a.jpg' --description 'alias portgraph doas lsof -n -F | ./lsofgraph | dot -Tjpg > /tmp/a.jpg'
  doas lsof -n -F | ./lsofgraph | dot -Tjpg > /tmp/a.jpg $argv;
end
