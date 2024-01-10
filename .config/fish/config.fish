function fish_mode_prompt; end
function fish_greeting; end

source /home/bresilla/.aliases

function _shko
    shko -c --short 19 && cd (cat ~/.config/shko/settings/chdir)
end

function n --wraps nnn --description 'support nnn quit and change directory'
    if test -n "$NNNLVL"
        if [ (expr $NNNLVL + 0) -ge 1 ]
            echo "nnn is already running"
            return
        end
    end
    if test -n "$XDG_CONFIG_HOME"
        set -x NNN_TMPFILE "$XDG_CONFIG_HOME/nnn/.lastd"
    else
        set -x NNN_TMPFILE "$HOME/.config/nnn/.lastd"
    end
    nnn $argv
    if test -e $NNN_TMPFILE
        source $NNN_TMPFILE
        rm $NNN_TMPFILE
    end
end


###DIRENV
direnv hook fish | source

###STARSHIP
starship init fish | source
