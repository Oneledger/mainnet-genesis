#!/bin/bash

#Creating logrotate script
FILE="/etc/logrotate.d/olfullnode"

OLDATA="/opt/.olfullnode/data"

/bin/cat <<EOM >$FILE
$OLDATA/consensus.log {
        su root root
        daily
        missingok
        rotate 60
        compress
        create
        copytruncate
        dateext
        dateformat -%Y-%m-%d
        dateyesterday
} 
EOM

#Run logrotate script
sudo logrotate $FILE -f
