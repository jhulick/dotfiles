
alias ls='ls --color=auto'
alias ll='ls -l'
alias l='ls -l'
alias h='history 25'

# -F : don't page if less than one screen
# -i : ignore-case
# -R : raw-control-char
# -S : chop-long-lines
# -c : clear-screen (rather than scroll to clear)
# -w : hilite-unread
# -X : no-init (won't clear screen on exit)
alias less='less -FiRSwX -c '

alias grep='grep --color=auto'

alias reload="source $HOME/.bashrc"

#-------------------------------------------------

__() {
  cp $1 __$1
}

gri() {
  find ${2:-.} $FIND_OPTIONS -type f -print0 | xargs -0 grep -i $3 --color=auto "$1"
}

gril() {
  gri "$1" ${2:-.} -l
}

du_sort() {
  du -b --max-depth=1 | sort -n | thousands
}

size_sort() {
  find . -type f -printf "%s %p\n" | sort -n | thousands
}

#-------------------------------------------------

alias gem_install="gem install --no-ri --no-rdoc -r"

alias apg='apg -n 20 -m 8 -M SNCL -t'

_tsocks() {
  TSOCKS_CONF_FILE=$HOME/etc/tsocks.conf tsocks "$@"
}

alias tkh="$EDITOR $HOME/.ssh/known_hosts"

rm_caches() {
  find . -name '.cache_*' -print0 | xargs -0 rm -v 2>/dev/null
}

serve() {
  python -m SimpleHTTPServer
}

