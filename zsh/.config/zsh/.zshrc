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

autoload -U promptinit
fpath+=/home/angelo/dotfiles/zsh/.config/zsh/plugins/zsh-clean
promptinit
prompt clean
    # source ~/.config/zsh/vincent.zsh
  
  
  # Report command running time if it is more than 3 seconds
  # REPORTTIME=3

# fancy prompt
  # source ~/.config/zsh/plugins/aq-prompt.zsh

  # AGKOZAK_MULTILINE=0
  # AGKOZAK_BLANK_LINES=1
  # AGKOZAK_PROMPT_CHAR=( » ❯ ❮ )

  # AGKOZAK_CUSTOM_PROMPT='%(?..%B%F{red}(%?%)%f%b )'
  # AGKOZAK_CUSTOM_PROMPT+=$'%B%F{blue}%2v%f%b '
  # AGKOZAK_CUSTOM_PROMPT+='%F{magenta}%(4V.❮.»)%f '
  # AGKOZAK_CUSTOM_RPROMPT='%(3V.%F{yellow}%3v%f.) %*'

  #                          div  beh ahe add del mod ren untr
  # AGKOZAK_CUSTOM_SYMBOLS=( '&*' '&' '*' '+' 'x' '!' '>' '?' )
  # AGKOZAK_CUSTOM_SYMBOLS=( '↕' '↓' '↑' '+' 'x' '~' 'r' '?' )


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
  export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

  # misc
  # zstyle ':completion:*' menu select
  # autoload -U compinit && compinit -d ~/.config/zsh/zcompdump

  source "/home/angelo/.config/fzf/shell/key-bindings.zsh"
  source "/home/angelo/.config/zsh/plugins/zsh-z.plugin.zsh"
  source /home/angelo/.config/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

  if [ $TILIX_ID ] || [ $VTE_VERSION ]; then
    source /etc/profile.d/vte.sh
  fi


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
  # alias la='ls -Algoha --author'
  alias la="ls -lha | sed -re 's/^[^ ]* //'"
  alias update="sudo apt update"
  alias upgrade="sudo apt upgrade"
  alias upg="apt list --upgradable"
  alias blame='systemd-analyze blame'
  alias ls='ls --color=auto --group-directories-first'
  alias glog='git log --pretty="%Cgreen%h  %Cblue%ar%Creset  %s"'

  # for tilix profile switching, i fink
  alias ssh='printf "\033]7;file://%s/\007" "mickey"; ssh'


<<<<<<< HEAD
autoload -U promptinit && promptinit

  prompt pure
  prompt_newline='%666v'
  PROMPT="$PROMPT"
=======

## Checking vcs
# Global vcs_info
# Check if there are modifications and staged changes
zstyle ':vcs_info:*' get-revision true
# Clean only
# Check for untracked files
zstyle ':vcs_info:*' check-for-untracked true
# Check for prompt arrows up and down
zstyle ':vcs_info:*' check-head true

## Symbols
# Modified sym
zstyle ':vcs_info:*' unstagedstr '*'
# Staged sym
zstyle ':vcs_info:*' stagedstr '+'
# Untracked sym
zstyle ':vcs_info:*:clean:*' untrackedstr '.'
# Your head is behind remote
zstyle ':vcs_info:*:clean:*' headbehindstr '⇣'
# Your head is ahead remote
zstyle ':vcs_info:*:clean:*' headaheadstr '⇡'
# Prompt symbol
zstyle ':clean:normal:*' prompt-symbol '❯'
# Prompt symbol as root user
zstyle ':clean:root:*' prompt-symbol '#'

# Note that the * can be replaced with the vcs
# Example these are the symbols that will be used in a git repo
zstyle ':vcs_info:git:*' unstagedstr 'G*'
zstyle ':vcs_info:git:*' stagedstr 'G+'
zstyle ':vcs_info:git:clean:*' untrackedstr 'G.'
# only works with the vcs_info ones matching :vcs_info:svn:context:-all-
>>>>>>> 4b2c57dad0329fc921eb941c4aa8838424e2eec8

# necessary?
  # autoload -U colors
  # colors
  setopt prompt_subst

# # left prompt

# # *** PROMPT FORMATTING ***

# # Echoes a username/host string when connected over SSH (empty otherwise)
# ssh_info() {
#   [[ "$SSH_CONNECTION" != '' ]] && echo "%(!.%{$fg[red]%}.%{$fg[yellow]%})%n%{$reset_color%}@%{$fg[green]%}%m%{$reset_color%}:" || echo ""
# }

# # Echoes information about Git repository status when inside a Git repository
# git_info() {

#   # Exit if not inside a Git repository
#   ! git rev-parse --is-inside-work-tree > /dev/null 2>&1 && return

#   # Git branch/tag, or name-rev if on detached head
#   local GIT_LOCATION=${$(git symbolic-ref -q HEAD || git name-rev --name-only --no-undefined --always HEAD)#(refs/heads/|tags/)}

#   local AHEAD="%{$fg[red]%}⇡NUM%{$reset_color%}"
#   local BEHIND="%{$fg[cyan]%}⇣NUM%{$reset_color%}"
#   local MERGING="%{$fg[magenta]%}⚡︎%{$reset_color%}"
#   local UNTRACKED="%{$fg[red]%}●%{$reset_color%}"
#   local MODIFIED="%{$fg[yellow]%}●%{$reset_color%}"
#   local STAGED="%{$fg[green]%}●%{$reset_color%}"

#   local -a DIVERGENCES
#   local -a FLAGS

#   local NUM_AHEAD="$(git log --oneline @{u}.. 2> /dev/null | wc -l | tr -d ' ')"
#   if [ "$NUM_AHEAD" -gt 0 ]; then
#     DIVERGENCES+=( "${AHEAD//NUM/$NUM_AHEAD}" )
#   fi

#   local NUM_BEHIND="$(git log --oneline ..@{u} 2> /dev/null | wc -l | tr -d ' ')"
#   if [ "$NUM_BEHIND" -gt 0 ]; then
#     DIVERGENCES+=( "${BEHIND//NUM/$NUM_BEHIND}" )
#   fi
#   local GIT_DIR="$(git rev-parse --git-dir 2> /dev/null)"
#   if [ -n $GIT_DIR ] && test -r $GIT_DIR/MERGE_HEAD; then
#     FLAGS+=( "$MERGING" )
#   fi

#   if [[ -n $(git ls-files --other --exclude-standard 2> /dev/null) ]]; then
#     FLAGS+=( "$UNTRACKED" )
#   fi

#   if ! git diff --quiet 2> /dev/null; then
#     FLAGS+=( "$MODIFIED" )
#   fi

#   if ! git diff --cached --quiet 2> /dev/null; then
#     FLAGS+=( "$STAGED" )
#   fi

#   local -a GIT_INFO
#   GIT_INFO+=( "\033[38;5;15m±" )
#   [[ ${#DIVERGENCES[@]} -ne 0 ]] && GIT_INFO+=( "${(j::)DIVERGENCES}" )
#   [[ ${#FLAGS[@]} -ne 0 ]] && GIT_INFO+=( "${(j::)FLAGS}" )
#   GIT_INFO+=( "\033[38;5;15m$GIT_LOCATION%{$reset_color%}" )
#   echo "${(j: :)GIT_INFO}"

# }

# # Use ❯ as the non-root prompt character; # for root
# # Change the prompt character color if the last command had a nonzero exit code
# PS1='
# $(ssh_info)%{$fg[magenta]%}%~%u $(git_info)
# %(?.%{$fg[blue]%}.%{$fg[red]%})%(!.#.❯)%{$reset_color%} '


# #  async right prompt
# # https://github.com/pawel-slowik/zsh-async-git-prompt/blob/master/async-git-prompt.plugin.zsh

# if [[ -z $GIT_PROMPT_ORDER ]]; then
# 	GIT_PROMPT_ORDER=(
# 		"prefix"
# 		"branch"
# 		"behind"
# 		"ahead"
# 		"separator"
# 		"staged"
# 		"changed"
# 		"conflicts"
# 		"untracked"
# 		"clean"
# 		"suffix"
# 	)
# fi

# if [[ -z $GIT_PROMPT_SYMBOLS ]]; then
# 	declare -A GIT_PROMPT_SYMBOLS
# 	GIT_PROMPT_SYMBOLS=(
# 		"prefix" "%F{250}[%f"
# 		"branch" "%F{120}"
# 		"behind" "%F{216}%{←%G%}"
# 		"ahead" "%F{216}%{→%G%}"
# 		"separator" "%F{250}|%f"
# 		"staged" "%F{117}%{♦%G%}"
# 		"changed" "%F{226}%{◊%G%}"
# 		"conflicts" "%F{9}%{≠%G%}"
# 		"untracked" "%F{214}%{…%G%}"
# 		"clean" "%F{10}%B%{✓%G%}%b"
# 		"suffix" "%F{250}]%f"
# 	)
# fi

# # Remove right margin from $RPROMPT. In theory, setting ZLE_RPROMPT_INDENT
# # appropriately should be enough, but in practice results vary:
# # https://superuser.com/q/655607
# : ${GIT_PROMPT_INDENT_HACK:=1}

# declare -A GIT_STATUS_MAP
# GIT_STATUS_MAP=(
# 	' M' 'changed'    # not updated, work tree changed since index
# 	' D' 'changed'    # not updated, deleted in work tree
# 	' T' 'changed'    # type changed in work tree, not staged
# 	'M ' 'staged'     # updated in index, index and work tree matches
# 	'MM' 'changed'    # updated in index, work tree changed since index
# 	'MD' 'changed'    # updated in index, deleted in work tree
# 	'MT' 'changed'    # updated in index, type changed in work tree
# 	'A ' 'staged'     # added to index, index and work tree matches
# 	'AM' 'changed'    # added to index, work tree changed since index
# 	'AD' 'changed'    # added to index, deleted in work tree
# 	'AT' 'changed'    # added to index, type changed in work tree
# 	'D ' 'staged'     # deleted from index
# 	'DM' 'changed'    # deleted from index
# 	'R ' 'staged'     # renamed in index, index and work tree matches
# 	'RM' 'changed'    # renamed in index, work tree changed since index
# 	'RD' 'changed'    # renamed in index, deleted in work tree
# 	'C ' 'staged'     # copied in index, index and work tree matches
# 	'CM' 'changed'    # copied in index, work tree changed since index
# 	'CD' 'changed'    # copied in index, deleted in work tree
# 	'T ' 'staged'     # type changed in index, index and work tree matches
# 	'TM' 'changed'    # type changed in index and matches type in work tree, content differs
# 	'TD' 'changed'    # type changed in index, deleted in work tree
# 	'TT' 'changed'    # type changed in index and differs from type in work tree
# 	'DD' 'conflicts'  # unmerged, both deleted
# 	'AU' 'conflicts'  # unmerged, added by us
# 	'UD' 'conflicts'  # unmerged, deleted by them
# 	'UA' 'conflicts'  # unmerged, added by them
# 	'DU' 'conflicts'  # unmerged, deleted by us
# 	'AA' 'conflicts'  # unmerged, both added
# 	'UU' 'conflicts'  # unmerged, both modified
# 	'??' 'untracked'  # untracked
# 	'!!' 'ignored'    # ignored
# )

# GIT_PROMPT_FIFO_DIR="$HOME/.tmp/zsh-git-prompt"

# if [[ $GIT_PROMPT_INDENT_HACK -eq 1 ]]; then
# 	if [[ $TMUX_PANE ]]; then
# 		export ZLE_RPROMPT_INDENT=0
# 	else
# 		export ZLE_RPROMPT_INDENT=1
# 	fi
# fi

# function git_get_status() {
# 	local status_string map_status chunk chunk_index mapped_status
# 	local -a status_chunks
# 	local -A git_flags git_strings git_numbers
# 	status_string="$(git status --branch -u --porcelain -z 2> /dev/null)"
# 	if [[ $? -ne 0 ]]; then
# 		git_flags=(
# 			"in_repo" 0
# 		)
# 		typeset -p git_flags git_strings git_numbers
# 		return
# 	fi
# 	for map_status in $GIT_STATUS_MAP; do
# 		git_numbers[$map_status]=0
# 	done
# 	status_chunks=(${(0)status_string})
# 	chunk_index=1
# 	while [[ chunk_index -le ${#status_chunks} ]]; do
# 		chunk="${status_chunks[$chunk_index]}"
# 		if [[ "${chunk:0:2}" == '##' ]]; then
# 			git_parse_status_header "${chunk:2}"
# 			git_strings[branch]="$RETURN_BRANCH"
# 			git_numbers[ahead]=$RETURN_AHEAD
# 			git_numbers[behind]=$RETURN_BEHIND
# 		else
# 			mapped_status=${GIT_STATUS_MAP[${chunk:0:2}]}
# 			git_numbers[$mapped_status]=$((git_numbers[$mapped_status] + 1))
# 		fi
# 		if [[ "${chunk:0:2}" == R* || "${chunk:0:2}" == C* ]]; then
# 			chunk_index=$((chunk_index + 2))
# 		else
# 			chunk_index=$((chunk_index + 1))
# 		fi
# 	done
# 	git_flags[in_repo]=1
# 	git_flags[clean]=0
# 	if [[ \
# 		${git_numbers[staged]} -eq 0
# 		&& ${git_numbers[changed]} -eq 0
# 		&& ${git_numbers[conflicts]} -eq 0
# 		&& ${git_numbers[untracked]} -eq 0
# 	]] then
# 		git_flags[clean]=1
# 	fi
# 	typeset -p git_flags git_strings git_numbers
# }

# function git_parse_status_header() {
# 	local branches divergence div
# 	typeset -g RETURN_AHEAD RETURN_BEHIND RETURN_BRANCH
# 	RETURN_AHEAD=0
# 	RETURN_BEHIND=0
# 	if [[ "$1" == *'Initial commit on '* ]]; then
# 		RETURN_BRANCH="${1/#*'Initial commit on '/}"
# 		return
# 	fi
# 	if [[ "$1" == *'No commits yet on '* ]]; then
# 		RETURN_BRANCH="${1/#*'No commits yet on '/}"
# 		return
# 	fi
# 	if [[ "$1" == *'no branch'* ]]; then
# 		git_get_tag_or_hash
# 		RETURN_BRANCH="$RETURN_TAG_OR_HASH"
# 		return
# 	fi
# 	if [[ "$1" == *'...'* ]]; then
# 		# local and remote branch info
# 		branches=(${(s:...:)1})
# 		RETURN_BRANCH="${branches[1]# }"
# 		if [[ $#branches -ne 1 ]]; then
# 			# ahead or behind
# 			divergence="${(M)branches[2]%\[*\]}"
# 			divergence="${divergence#\[}"
# 			divergence="${divergence%\]}"
# 			for div in ${(s:, :)divergence}; do
# 				if [[ "$div" == 'ahead '* ]]; then
# 					RETURN_AHEAD="${div#ahead }"
# 				elif [[ "$div" == 'behind '* ]]; then
# 					RETURN_BEHIND="${div#behind }"
# 				fi
# 			done
# 		fi
# 		return
# 	fi
# 	RETURN_BRANCH="${1# }"
# }

# function git_get_tag_or_hash() {
# 	local log_string
# 	local refs ref
# 	local ret_hash ret_tag
# 	typeset -g RETURN_TAG_OR_HASH
# 	log_string="$(git log -1 --decorate=full --format="%h%d" 2> /dev/null)"
# 	if [[ "$log_string" == *' ('*')' ]]; then
# 		ret_hash="${log_string%% (*)}"
# 		refs="${(M)log_string%% (*)}"
# 		refs="${refs# \(}"
# 		refs="${refs%\)}"
# 		for ref in ${(s:, :)refs}; do
# 			if [[ "$ref" == 'refs/tags/'* ]]; then # git 1.7.x
# 				ret_tag="${ref#refs/tags/}"
# 			elif [[ "$ref" == 'tag: refs/tags/'* ]]; then # git 2.1.x
# 				ret_tag="${ref#tag: refs/tags/}"
# 			fi
# 			if [[ "$ret_tag" != "" ]]; then
# 				RETURN_TAG_OR_HASH="tags/$ret_tag"
# 				return
# 			fi
# 		done
# 		RETURN_TAG_OR_HASH="$ret_hash"
# 	fi
# }

# function git_prompt_completed_callback() {
# 	local symbol line k buffer=""
# 	while read -t 0 -r -u $GIT_PROMPT_DESCRIPTOR line; do
# 		eval $line
# 	done
# 	if [[ ${git_flags[in_repo]} -eq 1 ]]; then
# 		for k in $GIT_PROMPT_ORDER; do
# 			symbol="${GIT_PROMPT_SYMBOLS[$k]}"
# 			if [[ $GIT_PROMPT_INDENT_HACK -eq 1 ]]; then
# 				if [[ -z $TMUX_PANE ]]; then
# 					if [[ $k == suffix ]]; then
# 						symbol="%{$symbol%}"
# 					fi
# 				fi
# 			fi
# 			if [[ ${git_strings[$k]} != "" ]] then
# 				buffer+="$symbol${git_strings[$k]}"
# 			elif [[ ${git_numbers[$k]} != "" ]] then
# 				if [[ ${git_numbers[$k]} != 0 ]] then
# 					buffer+="$symbol${git_numbers[$k]}"
# 				fi
# 			elif [[ ${git_flags[$k]} != "" ]]; then
# 				if [[ ${git_flags[$k]} -eq 1 ]] then
# 					buffer+="$symbol"
# 				fi
# 			else
# 				buffer+="$symbol"
# 			fi
# 		done
# 	fi
# 	RPROMPT=$buffer
# 	zle && zle reset-prompt
# }

# function git_prompt_bg() {
# 	git_get_status >&$GIT_PROMPT_DESCRIPTOR
# 	kill -s USR1 $$
# }

# function git_prompt_hook() {
# 	if [[ $GIT_PROMPT_BG_PID != 0 ]]; then
# 		kill -s HUP $GIT_PROMPT_BG_PID > /dev/null 2>&1
# 	fi
# 	git_prompt_bg &!
# 	GIT_PROMPT_BG_PID=$!
# }

# function git_prompt_init() {
# 	typeset -g GIT_PROMPT_BG_PID GIT_PROMPT_DESCRIPTOR
# 	GIT_PROMPT_BG_PID=0
# 	local fifo="$GIT_PROMPT_FIFO_DIR/$$.fifo"
# 	mkdir -m 700 -p "$GIT_PROMPT_FIFO_DIR"
# 	mkfifo -m 600 $fifo
# 	exec {GIT_PROMPT_DESCRIPTOR}<>$fifo
# 	rm -f $fifo
# }

# function TRAPUSR1() {
# 	git_prompt_completed_callback
# 	GIT_PROMPT_BG_PID=0
# }

# autoload -Uz add-zsh-hook
# add-zsh-hook precmd git_prompt_hook
# git_prompt_init
