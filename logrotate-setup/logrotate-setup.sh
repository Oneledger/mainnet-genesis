#!/bin/bash

#logrotate
cd $OLDATA && sudo wget https://raw.githubusercontent.com/Oneledger/mainnet-genesis/master/logrotate-setup/logrotate.sh && sudo chmod +x $OLDATA/logrotate.sh && sudo $OLDATA/logrotate.sh && sudo rm $OLDATA/logrotate.sh

#clean log files
cd $OLDATA && sudo wget https://raw.githubusercontent.com/Oneledger/mainnet-genesis/master/logrotate-setup/clean_log_files.sh && sudo chmod +x $OLDATA/clean_log_files.sh && sudo $OLDATA/clean_log_files.sh

#crontab setup
(crontab -l 2>/dev/null; echo "0 0 */5 * * $OLDATA/clean_log_files.sh") | crontab -
