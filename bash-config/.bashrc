# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"

source /usr/share/bash-complete-alias/complete_alias

complete -cf sudo

alias grep='grep --color=auto'
export LS_OPTIONS='--color=auto'
eval "$(dircolors)"

alias ls='eza $LS_OPTIONS -lh --no-permissions --icons --group-directories-first'
alias ll='eza $LS_OPTIONS -lh --group-directories-first'
alias l='eza $LS_OPTIONS'
#
# Some more alias to avoid making mistakes:
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

alias vim='nvim'
alias vi='vim'

complete -F _complete_alias "${!BASH_ALIASES[@]}"

eval "$(oh-my-posh init bash --config 'https://raw.githubusercontent.com/CsiPA0723/csipa0723/main/config.omp.json')"

eval "$(zoxide init bash)"

# Load Angular CLI autocompletion.
source <(ng completion script)
