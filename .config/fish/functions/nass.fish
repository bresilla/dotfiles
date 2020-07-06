# Defined in - @ line 1
function nass --wraps='docker run -d -p 8080:80 -v "/home/bresilla/sync/nextcloud:/var/www/html" -v "/home/bresilla/data/TEMP:/home" nextcloud' --description 'alias nass docker run -d -p 8080:80 -v "/home/bresilla/sync/nextcloud:/var/www/html" -v "/home/bresilla/data/TEMP:/home" nextcloud'
  docker run -d -p 8080:80 -v "/home/bresilla/sync/nextcloud:/var/www/html" -v "/home/bresilla/data/TEMP:/home" nextcloud $argv;
end
