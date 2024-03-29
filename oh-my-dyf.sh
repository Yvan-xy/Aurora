#!  /bin/bash
function logo(){
    logoFont '          __                                         __        ____'
    logoFont '  ____   / /_          ____ ___   __  __        ____/ /__  __ / __/'
    logoFont ' / __ \ / __ \ ______ / __ `__ \ / / / /______ / __  // / / // /_  '
    logoFont '/ /_/ // / / //_____// / / / / // /_/ //_____// /_/ // /_/ // __/  '
    logoFont '\____//_/ /_/       /_/ /_/ /_/ \__, /        \__,_/ \__, //_/     '
    logoFont '                               /____/               /____/         '
}

function logoFont(){
    echo -e "\033[34m$1\033[0m"  
}

function logInfo(){
    echo -e "\033[35m[+]\033[0m\033[36m$1\033[0m"
}

function basicEnv(){
    sudo apt update && sudo apt upgrade -y
    sudo apt install -y build-essential
    sudo apt install -y zsh screenfetch
    sudo apt install -y curl wget
    sudo apt install -y git
    sudo apt install -y cmake
}

function classicVim(){
    logInfo "正在设置classicVim..."

    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
    cp ./vimrc ~/.vimrc

    logInfo "classicVim设置完毕"
}

function spaceVim(){
    logInfo "正在设置SpaceVim..."

    curl -sLf https://spacevim.org/cn/install.sh | bash
    cp ./init.toml ~/.SpaceVim.d/init.toml

    logInfo "SpaceVim设置完毕"
}

function setZsh(){
    logInfo "正在构建oh-my-zsh..."

    sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
    cp ./zshrc ~/.zshrc
    source ~/.zshrc

    logInfo "oh-my-zsh构建完毕"
}

function setGdb(){
    logInfo "正在构建gdb..."

    git clone https://github.com/longld/peda.git ~/peda
    wget -q -O ~/.gdbinit-gef.py https://github.com/hugsy/gef/raw/master/gef.py
    cp ./gdbinit ~/.gdbinit

    logInfo "gdb构建完毕"
}

function setTmux(){
    logInfo "正在设置tmux..."

    sudo apt install -y tmux
    cp ./tmux.conf ~/.tmux.conf

    logInfo "tmux设置完毕"
}

function setPwn(){
    logInfo "正在搭建pwn环境..."

    pip install pwntools

    logInfo "pwn环境搭建完毕"
}

function setShadowsocks(){
    logInfo "正在设置shadowsocks..."

    pip install shadowsocks
    cp ./sslocal.json ./ss.sh ~/

    logInfo "shadowsocks设置完毕"
}

function bye(){
    echo -e "\033[5;31mWish you a nice day! :) \033[0m"
}

function main(){
    logo

    classicVim
    # spaceVim
    setGdb
    # setTmux
    setPwn
    setShadowsocks
    setZsh

    bye
}

main 
