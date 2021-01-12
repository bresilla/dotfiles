function fish_mode_prompt; end
function fish_greeting; end

function fish_prompt
    env FISH_VERSION=$FISH_VERSION PROMPTLINE_LAST_EXIT_CODE=$status bash ~/.config/promptline left $fish_bind_modea (__fish_git_prompt)
end
function fish_right_prompt
    env FISH_VERSION=$FISH_VERSION PROMPTLINE_LAST_EXIT_CODE=$status bash ~/.config/promptline right $fish_bind_mode (__fish_git_prompt)
end

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


function sh_aliases \
    --description 'import bash aliases to .fish function files.'
    for a in (cat ~/dots/.aliases | grep "^alias")
        set aname (echo $a | sed 's/alias \(.*\)=\(\'\|\"\).*/\1/')
        set command (echo $a | sed 's/alias \(.*\)=\(\'\|\"\)\(.*\)\2/\3/')
        if test -f ~/.config/fish/functions2/$aname.fish
            echo "Overwriting alias $aname as $command"
        else
            echo "Creating alias $aname as $command"
        end
        alias $aname $command
        funcsave $aname
    end
end

###DIRENV
direnv hook fish | source
