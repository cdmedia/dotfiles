# Chris' Bash RC

# Shortcuts
# -----------------------------------------------------

alias ll="ls -la"
alias ls='ls -Fa'
alias prefs='cd ~/.dotfiles'

# Utilities
# -----------------------------------------------------

# Set architecture flags
export ARCHFLAGS="-arch x86_64"
# Ensure user-installed binaries take precedence
export PATH=/usr/local/bin:$PATH
export PATH=/usr/local/sbin:$PATH
# Load local .bashrc if it exists
test -f ~/.bashrc-local && source ~/.bashrc-local

# Colors
# -----------------------------------------------------

# Make ls use colors
export CLICOLOR=1

# define colors
C_DEFAULT="\[\033[m\]"
C_WHITE="\[\033[1m\]"
C_BLACK="\[\033[30m\]"
C_RED="\[\033[31m\]"
C_GREEN="\[\033[32m\]"
C_YELLOW="\[\033[33m\]"
C_BLUE="\[\033[34m\]"
C_PURPLE="\[\033[35m\]"
C_CYAN="\[\033[36m\]"
C_LIGHTGRAY="\[\033[37m\]"
C_DARKGRAY="\[\033[1;30m\]"
C_LIGHTRED="\[\033[1;31m\]"
C_LIGHTGREEN="\[\033[1;32m\]"
C_LIGHTYELLOW="\[\033[1;33m\]"
C_LIGHTBLUE="\[\033[1;34m\]"
C_LIGHTPURPLE="\[\033[1;35m\]"
C_LIGHTCYAN="\[\033[1;36m\]"
C_BG_BLACK="\[\033[40m\]"
C_BG_RED="\[\033[41m\]"
C_BG_GREEN="\[\033[42m\]"
C_BG_YELLOW="\[\033[43m\]"
C_BG_BLUE="\[\033[44m\]"
C_BG_PURPLE="\[\033[45m\]"
C_BG_CYAN="\[\033[46m\]"
C_BG_LIGHTGRAY="\[\033[47m\]"
export PS1="\n$C_LIGHTGREEN\u$C_DARKGRAY@$C_BLUE\h $C_DARKGRAY: $C_LIGHTYELLOW\w\n$C_DARKGRAY\$$C_DEFAULT "
TERM=xterm-256color

# Blog
# -----------------------------------------------------
DATE=`date +%Y-%m-%d`
newJekyllPost() {
	cp ~/Sites/cdmedia.github.io/_posts/2014-01-01-post-template.md ~/Sites/cdmedia.github.io/_posts/$DATE-$1.md
	vi ~/Sites/cdmedia.github.io/_posts/$DATE-$1.md
}
alias newpost=newJekyllPost
alias editpost='vi ~/Sites/cdmedia.github.io/_posts'
alias editlinks='vi ~/Sites/cdmedia.github.io/links.md'
alias blog='cd ~/Sites/cdmedia.github.io/'
alias blogcommit='git commit -a -m "blog updates"'

# RTV settings
export RTV_EDITOR=vim