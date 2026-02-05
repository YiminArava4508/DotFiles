# If not running interactively, don't do anything (leave this at the top of this file)
[[ $- != *i* ]] && return

# All the default Omarchy aliases and functions
# (don't mess with these directly, just overwrite them here!)
source ~/.local/share/omarchy/default/bash/rc

# Add your own exports, aliases, and functions here.
#
# Make an alias for invoking commands you use constantly
# alias p='python'

# Git aliases (nice-to-have shortcuts)
alias g='git'
alias ga='git add'
alias gb='git branch'
alias gba='git branch -a'
alias gbd='git branch -d'
alias gcb='git checkout -b'
alias gco='git checkout'
alias gcm='git commit -m'
alias gca='git commit --amend'
alias gcane='git commit --amend --no-edit'
alias gcl='git clone'
alias gclean='git clean -fd'
alias gd='git diff'
alias gds='git diff --staged'
alias gf='git fetch'
alias gm='git merge'
alias gl='git log --oneline --graph --decorate'
alias gpl='git pull'
alias gp='git push'
alias gpf='git push --force-with-lease'
alias gr='git restore'
alias grs='git restore --staged'
alias gs='git status -sb'
alias gsh='git show'
alias gst='git stash'
alias gsta='git stash push'
alias gstp='git stash pop'
alias gsw='git switch'
alias gswc='git switch -c'
alias gundo='git reset --soft HEAD~1'
