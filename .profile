alias 'b'='brew'
alias 'k'='kubectl'
alias 'kns'='kubens'
alias 'untar'='tar xvf'
alias 'vi'='lvim'
alias 'vim'='lvim'
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

killdocker() {
  docker kill $(docker ps -q)
}

export EDITOR=vim
export BROWSER=google-chrome

