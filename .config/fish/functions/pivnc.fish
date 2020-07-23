# Defined in - @ line 1
function pivnc --wraps='vncviewer $pi:1 --passwd=/home/bresilla/.vnc/passwd' --description 'alias pivnc vncviewer $pi:1 --passwd=/home/bresilla/.vnc/passwd'
  vncviewer $pi:1 --passwd=/home/bresilla/.vnc/passwd $argv;
end
