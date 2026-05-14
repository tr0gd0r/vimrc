PROMPT="%d => "
export EDITOR=nvim

alias ll='eza -al'
alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'
alias diff='diff -W $(( $(tput cols) - 2 ))'
alias grep='grep --color=auto'
alias j='cd ..'
alias v='nvim'
alias vim='nvim'

alias gs='git status'
alias gb='git branch --show-current'
alias ga='git add'
alias gd='git diff'
alias gc='git checkout'
alias gpo='git pull origin'

function del-branch {
    if [[ -z "$1" ]]
    then
        echo "pass a branch or gtfo"
    else
        git branch -D "$1"
        git push origin --delete "$1"
    fi
}

# bash history stuff
HISTSIZE=10000000
SAVEHIST=10000000
setopt BANG_HIST                 # Treat the '!' character specially during expansion.
setopt INC_APPEND_HISTORY        # Write to the history file immediately, not when the shell exits.
setopt SHARE_HISTORY             # Share history between all sessions.
setopt HIST_EXPIRE_DUPS_FIRST    # Expire duplicate entries first when trimming history.
setopt HIST_IGNORE_DUPS          # Don't record an entry that was just recorded again.
setopt HIST_IGNORE_ALL_DUPS      # Delete old recorded entry if new entry is a duplicate.
setopt HIST_FIND_NO_DUPS         # Do not display a line previously found.
setopt HIST_IGNORE_SPACE         # Don't record an entry starting with a space.
setopt HIST_SAVE_NO_DUPS         # Don't write duplicate entries in the history file.
setopt HIST_REDUCE_BLANKS        # Remove superfluous blanks before recording entry.
setopt HIST_VERIFY               # Don't execute immediately upon history expansion.
