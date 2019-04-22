HISTSIZE=10000
SAVEHIST=10000
TERM=xterm-256color
setopt appendhistory
setxkbmap -option caps:escape
HISTFILE=~/.config/zsh/tmp/zsh_history
export PATH=$HOME/bin:/usr/local/bin:$PATH

fpath=( "$HOME/.config/zsh" $fpath )
autoload -U promptinit;promptinit
prompt pure

PURE_GIT_UP_ARROW=\ 
# PURE_PROMPT_SYMBOL=➜ \ ➤\ ❯\ 💲\ 🞂\ »
PURE_PROMPT_SYMBOL=»
PURE_GIT_DOWN_ARROW=\ 

setopt prompt_subst
prompt_newline='%666v'
PROMPT=" $PROMPT"
RPROMPT='%{$fg[blue]%}%*'
zle_highlight=(default:bold,fg=blue)
#prompt /home/angelo/.config/zsh/aq_giticons.zsh-theme

# Setup fzf
# ---------
if [[ ! "$PATH" == */home/angelo/.config/fzf/bin* ]]; then
  export PATH="$PATH:/home/angelo/.config/fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/home/angelo/.config/fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "/home/angelo/.config/fzf/shell/key-bindings.zsh"







#  𐇔 𐇒 𐇛 𐇡 𐇯 👢 💀 💩 📡 🔒 🕺 🛵 🚷 ☠ 🤠
#                                    省 祉 祈 廒 ﮬ ﰌ ﱘ ﲵ



function take() {
  mkdir -p $1
  cd $1
}


alias xx='exit'
alias ..='cd ..'
alias gadd='git add .'
alias gpus='git push'
alias gpul='git pull'
alias gsta='git status'
alias gcom='git commit -m'
alias ls='ls --color=auto'
alias update="sudo apt update"
alias upgrade="sudo apt upgrade"
alias upg="apt list --upgradable"
alias zeesh='source ~/.zshrc'
alias glog='git log --pretty="%Cgreen%h  %Cblue%ar%Creset  %s"'
alias blame='systemd-analyze blame'
alias xo='xdg-open'


[[ -n ${key[Backspace]} ]] && bindkey "${key[Backspace]}" backward-delete-char
[[ -n ${key[Insert]} ]] && bindkey "${key[Insert]}" overwrite-mode
[[ -n ${key[Home]} ]] && bindkey "${key[Home]}" beginning-of-line
[[ -n ${key[PageUp]} ]] && bindkey "${key[PageUp]}" up-line-or-history
[[ -n ${key[Delete]} ]] && bindkey "${key[Delete]}" delete-char
[[ -n ${key[End]} ]] && bindkey "${key[End]}" end-of-line
[[ -n ${key[PageDown]} ]] && bindkey "${key[PageDown]}" down-line-or-history
[[ -n ${key[Up]} ]] && bindkey "${key[Up]}" up-line-or-search
[[ -n ${key[Left]} ]] && bindkey "${key[Left]}" backward-char
[[ -n ${key[Down]} ]] && bindkey "${key[Down]}" down-line-or-search
[[ -n ${key[Right]} ]] && bindkey "${key[Right]}" forward-char


export VISUAL=vim


export LESS_TERMCAP_mb=$'\e[1;32m'
export LESS_TERMCAP_md=$'\e[1;32m'
export LESS_TERMCAP_me=$'\e[0m'
export LESS_TERMCAP_se=$'\e[0m'
export LESS_TERMCAP_so=$'\e[01;33m'
export LESS_TERMCAP_ue=$'\e[0m'
export LESS_TERMCAP_us=$'\e[1;4;31m'

#export FZF_DEFAULT_COMMAND='fd --type f --hidden --follow --exclude .git'
export FZF_DEFAULT_COMMAND="find . -path '*/\.*' -type d -prune -o -type f -print -o -type l -print 2> /dev/null | sed s/^..//"
export FZF_DEFAULT_OPS="--layout=reverse-list ---layout=reverse --border"

# [ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# source ~/z.sh

# unclutter -idle 2 &
source /home/angelo/.config/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
