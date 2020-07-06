# Defined in - @ line 1
function pack --wraps='unset GOPATH; unset GOBIN && yay' --description 'alias pack unset GOPATH; unset GOBIN && yay'
  unset GOPATH; unset GOBIN && yay $argv;
end
