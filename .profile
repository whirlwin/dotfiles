alias 'mci'='mvn clean install'
alias 'untar'='tar xzvf'
alias 'xclip'='xclip -selection clipboard'

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

export EDITOR=vim
export PATH="/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl"

