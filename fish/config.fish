set -x TERM xterm-256color

set -x PATH $HOME/.cargo/bin $PATH
set -x GOPATH $HOME/
set -x PATH $GOPATH/bin $PATH

set -x EDITOR 'nvr -cc split --remote-wait'
