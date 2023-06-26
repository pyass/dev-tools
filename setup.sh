LOCATION=$(dirname "$(readlink -f "$0")")
cp ${LOCATION}/.{vimrc,bash*,tmux*} $HOME/
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
yes | ~/.fzf/install 
source ~/.bashrc
