#General shortcuts
alias mkd="mkdir -pv"
alias rmd="rm -rf"
alias h="cd ~"
alias sl="ls"
alias his="history"
alias hg="history | grep"
alias vim="nvim"
alias rng="ranger"
alias cvw="cd /var/www/"
alias rc="vim ~/.bashrc && source ~/.bashrc"
alias fr="source ~/.bashrc"
alias in="sudo apt-get install -y"
alias ali="vim ~/.bash_aliases && source ~/.bashrc"
alias func="vim ~/.bash_functions && source ~/.bashrc"
alias x="chmod +x"
alias x-="chmod -x" 
alias t="touch" 
alias mv="mv -v"
alias cp="cp -vr"

alias pill="pip install"
alias pun="pip uninstall"
alias py3="python3"

alias vrc="vim ~/.vimrc"
alias nvrc="vim ~/.config/nvim/init.lua"
alias sdn="shutdown now"

alias ga="git add ."
alias gcm="git commit -m"
alias gca="git commit -am"
alias gi="git init"
alias gign="npx add-gitignore"
alias gs="git status"
alias gpl="git pull"
alias gc="git clone"
alias gp="git push"

alias untar="tar xvf"
alias tarup="tar cvzf"
alias unbz="tar xjf"
alias ungz="tar xvzf"
alias build="mkdir build && cd build"
alias cbuild="build && cmake .."

alias ports="sudo netstat -tupln | grep LISTEN"
alias psql="sudo -u postgres psql"
alias xd="pwd | xclip"

alias sqlite="sqlite3"

alias tkill="tmux kill-session"
alias ta="tmux attach"
alias tn="tmux new"

#Change to apps: 
#Sudo commands to smooth workflow
alias docker="sudo docker"

#Change to upward directories
alias ..="cd .."
alias ...="cd ../../"
alias ....="cd ../../../"
alias .....="cd ../../../../"

#Top processes
alias psmem="ps auxf | sort -nr -k 4"
alias psmem10="ps auxf | sort -nr -k 4 | head -10"

#Check the size of folders
alias du1='du -h --max-depth=1' 

#alias ls="/bin/ls --color=auto --ignore='__pycache__'"
alias keygen='python -c "import secrets;print(secrets.token_hex(16))"'
