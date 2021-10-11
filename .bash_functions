#Update, Upgrade, and Remove

update() {
    sudo apt-get update -y

    sudo apt-get upgrade -y

    sudo apt-get autoremove -y
}

top10() {

history | awk '{CMD[$2]++;count++;}END { for (a in CMD)print CMD[a] " " CMD[a]/count*100 "% " a;}' | grep -v "./" | column -c3 -s " " -t | sort -nr | nl |  head -n10

}

act() {

    dir=$1
    source $dir/bin/activate

}

un() {

    sudo apt purge "$1"
    sudo apt autoremove

}

gup() {

    message=$1

    git add .
    git commit -m $message
    git push

}

tunnel() {
    port=$1
    host=$2

    ssh -N -L localhost:$port:localhost:$port $host
}
