# Defined in - @ line 1
function inxi --wraps='optirun inxi -Fxxxz' --description 'alias inxi optirun inxi -Fxxxz'
  optirun inxi -Fxxxz $argv;
end
