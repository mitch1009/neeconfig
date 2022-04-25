alias i="sudo apt-get install -y"
alias u="apt-get update"
alias up="sudp apt-get fuul-upgrade -y"
alias sites="cd /etc/apache2/sites-available"
alias esites="cd /etc/nginx/sites-available"
function initWR(){
    # Switch to sudo or root useer
    echo "To Root user"
    sudo su
    # download server
    curl -so ~/wazuh-server-installation.sh https://packages.wazuh.com/resources/4.2/open-distro/unattended-installation/distributed/wazuh-server-installation.sh

    echo "What shouldi call this Server ?:"
    read serverName
    bash ~/wazuh-server-installation.sh -n $serverName
}

function  WR(){
    sudo su
    echo "What should We call this Server ?:"
    read serverName
    ./wazuh-server-installation.sh -n $serverName

}

function enable-nee(){
    sudo chmod -x ~/neeconfig/enable.sh
    cd ~/neeconfig
    ./enable.sh
}
echo "[NEECONFIG]: Enabled"
