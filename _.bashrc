alias i="sudo apt-get install -y"
alias c="clear"
alias u="sudo apt-get update"
alias apa="sudo service apache2"
alias up="sudo apt-get full-upgrade -y"
alias sites="cd /etc/apache2/sites-available"
alias esites="cd /etc/nginx/sites-available"
alias mps="multipass"
alias mod="sudo chmod -R 755"
alias snip="sudo snap install"
alias mst="microstack"
alias vault="cd Divin-absa/password-vault && source env/bin/activate && python main.py"
alias neepull="hnow=$(pwd) && cd ~/neeconfig && git pull && cd $hnow"

# open stack installation using snap. 

function ostack(){
    u
    up
    snip microstack --beta
    sudo microstack init --auto --control
    echo 'give it a name'
    read nane
    microstack launch cirros -n $name
    echo "the password: "
    sudo snap get microstack config.credentials.keystone-password
    echo 'Username: admin'
}
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
    echo "What should We call this Server ?:"
    read serverName
    ./wazuh-server-installation.sh -n $serverName

}
function aproxy(){
    
sudo a2enmod proxy
sudo a2enmod proxy_http
sudo a2enmod proxy_balancer
sudo a2enmod lbmethod_byrequests
apa reload
}

function enable-nee(){
    sudo chmod -x ~/neeconfig/enable.sh
    cd ~/neeconfig
    ./enable.sh
}
echo "[NEECONFIG]: Enabled"


