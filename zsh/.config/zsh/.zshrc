#   general
  HISTSIZE=10000
  SAVEHIST=10000
  TERM=xterm-kitty
  export VISUAL=vim
  setopt appendhistory
  HOSTNAME=$(hostname)
  setxkbmap -option caps:escape
  HISTFILE=~/.config/zsh_history
  fpath=( "$HOME/.config/zsh" $fpath )
  export PATH=$HOME/.cargo/bin:$HOME/bin:/usr/local/bin:$PATH

  export NVIM_GTK_NO_HEADERBAR=1
  export NVIM_GTK_PREFER_DARK_THEME=1
  export NVIM_GTK_NO_WINDOW_DECORATION=1


#   fzf
  if [[ ! "$PATH" == */home/angelo/.config/fzf/bin* ]]; then
    export PATH="$PATH:/home/angelo/.config/fzf/bin"
  fi

  export FZF_DEFAULT_OPS="--layout=reverse-list ---layout=reverse --border"

  export FZF_DEFAULT_COMMAND="find . -type f -print -o -type l -print 2> /dev/null | sed s/^..//"
  # export FZF_DEFAULT_COMMAND="find -L"
  # export FZF_DEFAULT_COMMAND='fd --type f --hidden --follow --exclude .git'
  # export FZF_DEFAULT_COMMAND="find . -path '*/\.*' -type d -prune -o -type f -print -o -type l -print 2> /dev/null | sed s/^..//"
  export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

  [[ $- == *i* ]] && source "/home/angelo/.config/fzf/shell/completion.zsh" 2> /dev/null

  # misc
  zstyle ':completion:*' menu select
  autoload -U compinit && compinit -d ~/.config/zsh/tmp/zcompdump

  source "/home/angelo/.config/fzf/shell/key-bindings.zsh"
  source "/home/angelo/.config/zsh/plugins/zsh-z.plugin.zsh"
  source /home/angelo/.config/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh


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
  alias update="sudo apt update"
  alias upgrade="sudo apt upgrade"
  alias upg="apt list --upgradable"
  alias blame='systemd-analyze blame'
  alias gvim='gvim --remote-tab-silent'
  alias la="ls -lha | sed -re 's/^[^ ]* //'"
  alias ls='ls --color=auto --group-directories-first'
  alias glog='git log --pretty="%Cgreen%h  %Cblue%ar%Creset  %s"'


#  hacked pure prompt
  autoload -U promptinit && promptinit
  prompt pure
  prompt_newline='%666v'
  PROMPT="$PROMPT"


# Options

  setopt AUTO_CD                 # [default] .. is shortcut for cd .. (etc)
  setopt AUTO_PUSHD              # [default] cd automatically pushes old dir onto dir stack
  setopt CORRECT                 # [default] command auto-correction
  setopt CORRECT_ALL             # [default] argument auto-correction
  setopt NO_FLOW_CONTROL         # disable start (C-s) and stop (C-q) characters
  setopt HIST_IGNORE_SPACE       # [default] don't record commands starting with a space
  setopt IGNORE_EOF              # [default] prevent accidental C-d from exiting shell
  setopt LIST_PACKED             # make completion lists more densely packed
  setopt MENU_COMPLETE           # auto-insert first possible ambiguous completion
  setopt NO_NOMATCH              # [default] unmatched patterns are left unchanged
  setopt PRINT_EXIT_VALUE        # [default] for non-zero exit status

