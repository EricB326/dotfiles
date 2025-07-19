if status is-interactive
    # Commands to run in interactive sessions can go here
end

function fish_title
    echo "fish in "(basename (prompt_pwd))
end

set fish_greeting

alias rlfish="source ~/.config/fish/config.fish; echo Fish config reloaded"
alias efish="vim ~/.config/fish/config.fish"
alias estar="vim ~/.config/starship.toml"
alias c="clear"

starship init fish | source

function fish_postexec --on-event fish_postexec
    set -g __last_status $status
end


function starship_transient_prompt_func
    set -q __last_status; or set -g __last_status 0

    if test "$__last_status" -eq 0
        echo -n (starship module character)
    else
        echo -n (starship module character --status=1)
    end
end

enable_transience
