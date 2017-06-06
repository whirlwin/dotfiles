alias 'untar'='tar xvf'
alias 'xclip'='xclip -selection clipboard'

enter() {
  docker exec -it $1 bash
}

build() {
  docker -t $1 build .
}

up() {
  docker run -it $1 bash
}

export EDITOR=vim
export BROWSER=google-chrome

