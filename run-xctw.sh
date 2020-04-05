#!/bin/bash
#docker build -t jeh/xtcw xtcw
XSOCK=/tmp/.X11-unix
XAUTH=/tmp/.docker.xauth
xauth nlist :0 | sed -e 's/^..../ffff/' | xauth -f $XAUTH nmerge -
mkdir -p $HOME/Docker
docker run -i -v $HOME/Docker:/home/work -v $XSOCK:$XSOCK -v $XAUTH:$XAUTH -e XAUTHORITY=$XAUTH jeh/xtcw /bin/bash -c \
       "git clone https://github.com/xtforever/xtcw2.git; \
       cd xtcw2 && git pull && make -j4 && cd test_scroll_list \
       && make ; ./cwri -geometry 500x800"
