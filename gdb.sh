#!  /bin/bash

#安装pede
git clone https://github.com/longld/peda.git ~/peda

#安装gef
wget -q -O- https://github.com/hugsy/gef/raw/master/gef.sh | sh
wget -q -O ~/.gdbinit-gef.py https://github.com/hugsy/gef/raw/master/gef.py

#安装gdbinit
git clone http://github.com/gdbinit/Gdbinit.git
cp Gdbinit/gdbinit ~/.gdbinit


