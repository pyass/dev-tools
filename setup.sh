LOCATION=$(dirname "$(readlink -f "$0")")
cp ${LOCATION}/.{vimrc,bash*,tmux*} $HOME/
source ~/.bashrc
