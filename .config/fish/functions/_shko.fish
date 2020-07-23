# Defined in /home/bresilla/.config/fish/config.fish @ line 11
function _shko
    shko -c --short 19 && cd (cat ~/.config/shko/settings/chdir)
end
