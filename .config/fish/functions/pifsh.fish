# Defined in - @ line 1
function pifsh --wraps='sshfs trim@$pi:/home/trim /home/bresilla/Remote' --description 'alias pifsh sshfs trim@$pi:/home/trim /home/bresilla/Remote'
  sshfs trim@$pi:/home/trim /home/bresilla/Remote $argv;
end
