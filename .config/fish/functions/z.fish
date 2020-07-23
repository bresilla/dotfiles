# Defined in /home/bresilla/.config/fish/functions/z.fish @ line 2
function z --description 'alias z sudo ncdu --color=dark --exclude /home/bresilla/DATA'
	sudo ncdu --color=dark --exclude /home/bresilla/DATA $argv;
end
