alias 'untar'='tar xvf'
alias 'xclip'='xclip -selection clipboard'

enter() {
  docker exec --interactive --tty $1 bash
}

build() {
  docker build --tag $1 .
}

up() {
  docker run --interactive --tty $1 bash
}

export EDITOR=vim
export BROWSER=google-chrome

