export EDITOR=vim
[  -z "$TMUX" ] && export TERM=xterm-256color
if [[ "$TERM" != "screen-256color" ]]
then
  tmux attach-session -t "$USER" || tmux new-session -s "$USER"
  exit
fi

# GIT
source ~/.git-prompt.sh
PS1='\w$(__git_ps1 " Branch:(%s)")\$ '
export PATH="$(brew --prefix homebrew/php/php55)/sbin:$PATH"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
source ~/.profile
