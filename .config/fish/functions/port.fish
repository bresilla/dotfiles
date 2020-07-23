# Defined in - @ line 1
function port --wraps='docker run -d -p 9000:9000 -v /var/run/docker.sock:/var/run/docker.sock -v ~/.config/portainer:/data portainer/portainer && xdg-open "http://localhost:9000" || docker start port && xdg-open "http://localhost:9000/#/dashboard"' --description 'alias port docker run -d -p 9000:9000 -v /var/run/docker.sock:/var/run/docker.sock -v ~/.config/portainer:/data portainer/portainer && xdg-open "http://localhost:9000" || docker start port && xdg-open "http://localhost:9000/#/dashboard"'
  docker run -d -p 9000:9000 -v /var/run/docker.sock:/var/run/docker.sock -v ~/.config/portainer:/data portainer/portainer && xdg-open "http://localhost:9000" || docker start port && xdg-open "http://localhost:9000/#/dashboard" $argv;
end
