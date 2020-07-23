# Defined in - @ line 1
function ltex --wraps='docker run -v $PWD/:/doc/ -v /home/$USER/.fonts/:/usr/share/fonts/external/ -t -i thomasweise/texlive' --description 'alias ltex docker run -v $PWD/:/doc/ -v /home/$USER/.fonts/:/usr/share/fonts/external/ -t -i thomasweise/texlive'
  docker run -v $PWD/:/doc/ -v /home/$USER/.fonts/:/usr/share/fonts/external/ -t -i thomasweise/texlive $argv;
end
