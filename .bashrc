#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

unset PROMPT_COMMAND

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias wifi='~/.local/bin/wifi'
alias cpu='~/.local/bin/toggle_cpu_mode'
alias wall-res='~/.local/bin/wallpaper_resizer'

# PS1
PS1='\[\033[36m\][󰣇 \[\033[32m\]\u\[\033[37m\]@\[\033[34m\]\h\[\033[36m\]] [\[\033[32m\]\w\[\033[36m\]]\n'
PS1="$PS1"'\[\033[36m\]$\[\033[32m\] '

#
fastfetch
