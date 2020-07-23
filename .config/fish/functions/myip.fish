# Defined in - @ line 1
function myip --wraps='curl http://ipecho.net/plain; echo' --description 'alias myip curl http://ipecho.net/plain; echo'
  curl http://ipecho.net/plain; echo $argv;
end
