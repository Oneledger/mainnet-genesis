#!/bin/bash

#Cleaning log files

if [ -f '$OLDATA/consensus.log-*.gz' ]
then
  echo "File does not exist. Skipping..."
else
  rm $OLDATA/consensus.log-*.gz
fi
