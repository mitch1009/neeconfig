function nvM(){
    curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" 
}

function yangular() {
    name=$1
    echo generating new application $name in ~/
    ng new $name --skip-install
    ng config --global cli.packageManager yarn
    cd $name 
    yarn

}

function sangular() {
    ng g m  $1 
}