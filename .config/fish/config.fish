if status is-interactive
    # Commands to run in interactive sessions can go here
end

function fish_title
    echo "fish in "(basename (prompt_pwd))
end

set fish_greeting

alias c="clear"

# Maintenance.
alias upgrade="sudo pacman -Syu && echo \"Performing system restart in 1 minute.\" && sleep 60 && systemctl reboot"
alias upgradea="sudo pacman -Syu && yay && echo \"Performing system restart in 1 minute.\" && sleep 60 && systemctl reboot"
alias clean="sudo pacman -Qtd"
alias remove="sudo pacman -Rns"

# Common file ops.
alias rlfish="source ~/dotfiles/.config/fish/config.fish; echo Fish config reloaded"
alias efish="nvim ~/dotfiles/.config/fish/config.fish"

alias estar="nvim ~/dotfiles/.config/starship.toml"

alias evim="nvim ~/dotfiles/.vimrc"

# General interaction.
alias c="clear"
alias sudoe='sudoedit'
alias whatip="curl ifconfig.me"

# GitHub alias.
alias gs="git status"
alias gaa="git add -A"
alias gap="git add -p"
alias gcp="git checkout -p"
alias gf="git fetch"
alias gfr="git fetch && git rebase"
alias gl='git log -25 --pretty=format:"%Cred%h%x09%Cgreen%an%x09%Cblue%D %Creset%s"'
alias gr="git rebase"
alias grc="git rebase --continue"
alias gst="git stash save -u"
alias gstp="git stash pop"
alias guw="git reset HEAD^"
alias gw='git add -A && git commit -m "WIP"'
alias gus='git restore --staged'
alias com='git commit -m'
alias gpom='git push origin master'
alias gdd='git difftool --dir-diff'

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

export PATH="$HOME/.local/bin:$PATH"

if status is-interactive; and test -d /home/linuxbrew
	eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
end
