# Aliases
alias l="ls -a"

# Load version control information
autoload -Uz vcs_info
precmd() { vcs_info }
precmd_functions+=( precmd_vcs_info )

# Format the vcs_info_msg_0_ variable
COLOR_DEF=$'\e[0m'
COLOR_GIT=$'\e[38;5;39m'
zstyle ':vcs_info:git:*' formats ${COLOR_GIT}' (%b)'${COLOR_DEF}
zstyle ':vcs_info:*' enable git

# Set up the prompt (with git branch name)
setopt PROMPT_SUBST
PROMPT='%~${vcs_info_msg_0_} ↪ '

# Enable colors
autoload -U colors && colors

# zsh-syntax highlighting
source /Users/craley/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
