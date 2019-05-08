#   general
  HISTSIZE=10000
  SAVEHIST=10000
  export VISUAL=vim
  TERM=xterm-256color
  setopt appendhistory
  setxkbmap -option caps:escape
  HISTFILE=~/.config/zsh_history
  fpath=( "$HOME/.config/zsh" $fpath )
  export PATH=$HOME/bin:/usr/local/bin:$PATH


# fancy prompt  
  source ~/.config/zsh/plugins/agkozak-zsh-prompt/agkozak-zsh-prompt.plugin.zsh

  AGKOZAK_BLANK_LINES=1
  AGKOZAK_MULTILINE=0
  AGKOZAK_PROMPT_CHAR=( » ❯ ❮ )

  AGKOZAK_CUSTOM_PROMPT='%(?..%B%F{red}(%?%)%f%b )'
  AGKOZAK_CUSTOM_PROMPT+=$'%B%F{blue}%2v%f%b '
  AGKOZAK_CUSTOM_PROMPT+='%F{magenta}%(4V.❮.»)%f '
  AGKOZAK_CUSTOM_RPROMPT='%(3V.%F{yellow}%3v%f.) %*'

  #                          div  beh ahe add del mod ren untr
  # AGKOZAK_CUSTOM_SYMBOLS=( '&*' '&' '*' '+' 'x' '!' '>' '?' )
  AGKOZAK_CUSTOM_SYMBOLS=( '⇣⇡' '↓' '↑' '+' 'x' '!' '>' '?' )

  source "/home/angelo/.config/zsh/plugins/zsh-z.plugin.zsh"

#   fzf
  if [[ ! "$PATH" == */home/angelo/.config/fzf/bin* ]]; then
    export PATH="$PATH:/home/angelo/.config/fzf/bin"
  fi

  source "/home/angelo/.config/fzf/shell/key-bindings.zsh"
  export FZF_DEFAULT_OPS="--layout=reverse-list ---layout=reverse --border"
  export FZF_DEFAULT_COMMAND='fd --type f --hidden --follow --exclude .git -L'

  # export FZF_DEFAULT_COMMAND="find . -path '*/\.*' -type d -prune -o -type f -print -o -type l -print 2> /dev/null | sed s/^..//"
  # export FZF_DEFAULT_COMMAND="find -L"


# misc
  zstyle ':completion:*' menu select
  autoload -U compinit && compinit -d ~/.config/zsh/tmp/zcompdump
  [[ $- == *i* ]] && source "/home/angelo/.config/fzf/shell/completion.zsh" 2> /dev/null
  source /home/angelo/.config/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
  
  function take() {
    mkdir -p $1
    cd $1
  }

#  alias
  alias xx='exit'
  alias ..='cd ..'
  alias la='ls -Agho'
  alias xo='xdg-open'
  alias gpus='git push'
  alias gpul='git pull'
  alias gadd='git add .'
  alias gsta='git status'
  alias gcom='git commit -m'
  alias ls='ls --color=auto'
  alias zeesh='source ~/.zshrc'
  alias update="sudo apt update"
  alias upgrade="sudo apt upgrade"
  alias upg="apt list --upgradable"
  alias blame='systemd-analyze blame'
  alias glog='git log --pretty="%Cgreen%h  %Cblue%ar%Creset  %s"'


