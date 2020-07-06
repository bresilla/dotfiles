# Defined in - @ line 1
function pisyc --wraps='watch -n 10 rsync -avz /media/bresilla/indrive/Code/Raspi/ trim@$pi:/home/trim/Code/' --description 'alias pisyc watch -n 10 rsync -avz /media/bresilla/indrive/Code/Raspi/ trim@$pi:/home/trim/Code/'
  watch -n 10 rsync -avz /media/bresilla/indrive/Code/Raspi/ trim@$pi:/home/trim/Code/ $argv;
end
