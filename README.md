# Aurora  


[![Awesome](https://awesome.re/badge-flat.svg)](https://awesome.re)

---
### dyf附体  
```bash
chmod +x oh-my-dyf.sh
./oh-my-dyf.sh
```

### 1. 经典Vim配置

```zsh
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
cp ./vimrc ~/.vimrc
```
作为vim重度依赖患者,受不了没有插件哈哈哈哈哈哈哈哈

### 2. Spacevim 配置

```zsh
curl -sLf https://spacevim.org/cn/install.sh | bash
cp ./init.toml ~/.SpaceVim.d/init.toml
```
### 3. zsh gdb与tmux  

```zsh
cp ./tmux.conf ~/.tmux.conf && cp ./.zshrc ~/.zshrc
git clone https://github.com/longld/peda.git ~/peda
echo "source ~/peda/peda.py" >> ~/.gdbinit
wget -q -O ~/.gdbinit-gef.py https://github.com/hugsy/gef/raw/master/gef.py
echo source ~/.gdbinit-gef.py >> ~/.gdbinit
```

#####  据说一个优秀的程序员总有几个独特的alias

#### 4. 图片优化显示
```bash
Usage: show [pic_name]   
show 41824142

Support for Fuzzy Search
Usage: show 4182
```
#### 5. 终端代理  
```bash
Usage: fuckup/fuckdown  
open/close socks proxy

Usage: proxyup/proxydown
open/close sslocal service
```

#### 6. 校园网自动登录  
```bash
Usage: login
You can change the account in the function named login in ~/.zshrc
```
#### 7. Tmux的设置

这里重新绑定了tmux的前缀键，默认的绑定太反人类，Ctrl-a为当前前缀键，当前快捷键如下：
```shell
水平分割窗口：C-a C-d
垂直分割窗口：C-a C-w
解绑当前会话：C-a d
绑定会话：tmux attach -t <session-id>
新建窗口：C-a c
切换到指定编号的窗口: C-a <number>
从列表中选择会话：C-a w
```
#### 8. 关于服务器中文字体支持
```sh
sudo apt-get install language-pack-zh*
sudo vim /etc/environment
# 添加一下配置
LANG="zh_CN.UTF-8"
LANGUAGE="zh_CN:zh:en_US:en"
sudo dpkg-reconfigure locales
```


