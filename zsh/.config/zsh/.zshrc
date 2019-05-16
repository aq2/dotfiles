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
  source ~/.config/zsh/plugins/agkozak-zsh-prompt.plugin.zsh

  AGKOZAK_MULTILINE=0
  AGKOZAK_BLANK_LINES=1
  AGKOZAK_PROMPT_CHAR=( » ❯ ❮ )

  AGKOZAK_CUSTOM_PROMPT='%(?..%B%F{red}(%?%)%f%b )'
  AGKOZAK_CUSTOM_PROMPT+=$'%B%F{blue}%2v%f%b '
  AGKOZAK_CUSTOM_PROMPT+='%F{magenta}%(4V.❮.»)%f '
  AGKOZAK_CUSTOM_RPROMPT='%(3V.%F{yellow}%3v%f.) %*'

  #                          div  beh ahe add del mod ren untr
  # AGKOZAK_CUSTOM_SYMBOLS=( '&*' '&' '*' '+' 'x' '!' '>' '?' )
  AGKOZAK_CUSTOM_SYMBOLS=( '↕' '↓' '↑' '' 'x' '~' '>' '?' )


#   fzf
  if [[ ! "$PATH" == */home/angelo/.config/fzf/bin* ]]; then
    export PATH="$PATH:/home/angelo/.config/fzf/bin"
  fi

  export FZF_DEFAULT_OPS="--layout=reverse-list ---layout=reverse --border"
  # export FZF_DEFAULT_COMMAND='fd --type f --hidden --follow --exclude .git'

  export FZF_DEFAULT_COMMAND="find . -type f -print -o -type l -print 2> /dev/null | sed s/^..//"
  # export FZF_DEFAULT_COMMAND="find -L"
  # export FZF_DEFAULT_COMMAND="find . -path '*/\.*' -type d -prune -o -type f -print -o -type l -print 2> /dev/null | sed s/^..//"

  [[ $- == *i* ]] && source "/home/angelo/.config/fzf/shell/completion.zsh" 2> /dev/null
  # export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

  # misc
  zstyle ':completion:*' menu select
  autoload -U compinit && compinit -d ~/.config/zsh/tmp/zcompdump

  source "/home/angelo/.config/fzf/shell/key-bindings.zsh"
  source "/home/angelo/.config/zsh/plugins/zsh-z.plugin.zsh"
  source /home/angelo/.config/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

if [ $TILIX_ID ] || [ $VTE_VERSION ]; then
        source /etc/profile.d/vte.sh
fi
HOSTNAME=$(hostname)





  function take() {
    mkdir -p $1
    cd $1
  }

#  alias
  alias xx='exit'
  alias cat='bat'
  alias ..='cd ..'
  alias xo='xdg-open'
  alias gpus='git push'
  alias gpul='git pull'
  alias gadd='git add .'
  alias ping='ping -c 5'
  alias gsta='git status'
  alias gcom='git commit -m'
  alias zeesh='source ~/.zshrc'
  alias la='ls -Algoha --author'
  alias update="sudo apt update"
  alias upgrade="sudo apt upgrade"
  alias upg="apt list --upgradable"
  alias blame='systemd-analyze blame'
  alias ls='ls --color=auto --group-directories-first'
  alias ssh='printf "\033]7;file://%s/\007" "mickey"; ssh'
  alias glog='git log --pretty="%Cgreen%h  %Cblue%ar%Creset  %s"'

