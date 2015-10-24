alias 'untar'='tar xzvf'
alias 'xclip'='xclip -selection clipboard'
plugins=(archlinux autojump colorize git mvn node zsh-syntax-highlighting)

# Kill a process on a specific port
function portkill() {
  if [ ! -z $1 ]; then
    PID=`lsof -ti:$1`
    if [ ! -z "$PID" ]; then
      kill -9 $PID
      echo "Killed process $PID"
    else
      echo "No process running on the port specified"
    fi
  else
    echo "Please specify a port number"
  fi
}
