alias 'untar'='tar xvf'
alias 'xclip'='xclip -selection clipboard'

enter() {
  docker exec -it $1 bash
}

export EDITOR=vim
export BROWSER=google-chrome

