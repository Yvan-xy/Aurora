# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
  export ZSH="/root/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="dpoggi"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

#终端代理
# export ALL_PROXY=socks5://127.0.0.1:1080

#将nodejs添加到环境变量
export NODE_HOME=/usr/local/node/
export PATH=$NODE_HOME/bin:$PATH

#添加wasm汇编工具
export PATH=$PATH:/home/Hammer/wabt/bin/

#将go环境添加到环境变量
export PATH=$PATH:/usr/local/go/bin

#将nvm添加到环境变量
export NVM_DIR="$HOME/.nvm"

#将pwntools等工具添加到环境变量
export PATH=$PATH:/usr/local/bin

[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

#nmap扫描主机
alias shit="nmap -O -A"

#查寻外网ip
alias myip="curl https://tool.lu/ip/"

#创建项目
alias jackson="/home/Hammer/myProject.sh"

#启动postman
alias postman="/home/Hammer/Postman/Postman"

#启动githack
alias githack="/home/Hammer/Githack/GitHack.py"

#启动heartbleed检测
alias heartbleed="/home/Hammer/heartbleed/ssltest.py"

#启动androidStudio
alias anstudio="/home/android-studio/bin/studio.sh"

#连接ibeike
alias ibeike="/home/code/shell/ibei.sh"

#连接ali
alias ali="/home/code/shell/ali.sh"

#连接cent
alias cent="/home/code/shell/cent.sh"

#连接404
alias ever404="ssh -p2333 dyf@202.204.62.222"

#连接black
alias black="ssh dyf@202.204.62.70"

#设置时钟
alias settime="ntpdate time.nist.gov"

#sucker
alias suck="wget -r -npH -k -c -nv"

#struts
alias struts="python3 /home/Hammer/Scanner/Struts2-Scan/Struts2Scan.py -u "

#set Chrome
alias setchrome="vim `whereis google-chrome | awk -F ' ' {'print $2'}`"

#设置代理
alias proxyup="sslocal -c ~/sslocal.json"
alias proxy6="sslocal -c ~/sslocal6.json"
alias fuckup="export ALL_PROXY=socks5://127.0.0.1:7891"
alias fuckdown="unset ALL_PROXY"

#查看电池电量
alias power="cat /sys/class/power_supply/BAT1/capacity"

#设置fucks
eval $(thefuck --alias)

#查询大文件
alias large="find / -size +100M"

#查看pdf
alias pdf="google-chrome"

#编辑zshrc
alias zshrc="vim ~/.zshrc"

#设置autojump
. /usr/share/autojump/autojump.sh

#cmake rebuild
alias rebuild="cd .. && rm -r build && mkdir build && cd build"

#set desktop black
alias down="sh -c 'echo 0 >/sys/class/backlight/intel_backlight/brightness'"

#web_pass解密 
function webpass(){
    java -classpath "/home/Hammer/Project/USTB_HACK/result/Misc/" Cipher1 $1
}

#查看照片
function show(){
    for name in $@
    do
        contain=`ls ./`
        if echo "${contain[@]}" | grep -w $name'.jpg'
        then
            display $name'.jpg' &
            continue
        fi
        if echo "${contain[@]}" | grep -w $name'.jpeg'
        then
            display $name'.jpeg' &
            continue
        fi
        if echo "${contain[@]}" | grep -w $name'.png'
        then
            display $name'.png' &
            continue
        else
            fuzz=`echo ${contain[@]} | grep $name`
            echo $fuzz > .temp.txt
            i=0
            if [[ $(cat .temp.txt) > 20 ]]
            then
                echo 'if continue?(y/n)  (items more then 20)'
                read choice
                if [[ $choice == 'y' || $choice == 'Y' ]]
                then 
                    for line in $(cat .temp.txt)
                    do
                        echo $line
                        display $line &
                    done
                elif [[ $choice == 'n' || $choice == 'N' ]]
                then
                    echo "Have a nice day"
                fi
            fi        
        fi
    done
}

#设置rtsp流读取
function fuckcam(){
    for line in $(cat $1)
    do
        ffplay  -rtsp_transport tcp -i $line &
        echo $line
    done
}

#校园网登录  
function login(){
    fuckdown
    curl -s -d "DDDDD=&upass=&v6ip=&0MKKey=123456789" 202.204.48.66 > /dev/null
    ip=`myip | grep IP | cut -d " " -f 2`
    wlan0_intranet=`ifconfig | grep -A 2 wlan0 | grep "inet .*" -o | cut -d " " -f 2`
    wlan0_mac=`ifconfig | grep -A 2 wlan0 | grep "inet6 .*" -o | cut -d " " -f 2`
    eth0_intranet=`ifconfig | grep -A 2 eth0 | grep "inet .*" -o | cut -d " " -f 2`
    eth0_mac=`ifconfig | grep -A 2 eth0 | grep "inet6 .*" -o | cut -d " " -f 2`
    if [[ $ip != '' ]]
    then
        echo "Login success!"
        echo "Extranet ip: "$ip
        if [[ $wlan0_intranet =~ "." ]]
        then            
            echo 1
            echo "Intranet ip: "$wlan0_intranet
            echo "MAC : "$wlan0_mac
        elif [[ $eth0_intranet =~ "." ]]
        then
            echo "Intranet ip: "$eth0_intranet
            echo "MAC : "$eth0_mac
        fi
    fi
}

#更新MAC
function changeMac(){
    mac=$(setAddress)
    echo $mac
    ifconfig $1 down
    ifconfig $1 hw ether $mac
    ifconfig $1 up
}                                                                                                                              

function getSeed(){                                                                                                            
    ((seed=$(($RANDOM % 256))))                                                                                                 
    if [[ $seed < 16 ]]
    then                                                                                                                       
        seed=$(($seed + 16))
    fi                                                                                                                         
    return $seed                                                                                                               
}                                                                                                                              

function setAddress(){
    eth=''
    for ((i=0;i<6;i++))
    do
        getSeed                                                                                                                        
        ins=$?
        eth="$eth$(printf '%x' $ins):"
    done
    echo $eth | sed 's/.$//'
}

function fade(){
    changeMac "eth0"
    changeMac "wlan0"
}

