# Defined in - @ line 1
function dotfile --wraps='/usr/bin/git --git-dir=$HOME/dots --work-tree=$HOME' --description 'alias dotfile /usr/bin/git --git-dir=$HOME/dots --work-tree=$HOME'
  /usr/bin/git --git-dir=$HOME/dots --work-tree=$HOME $argv;
end
