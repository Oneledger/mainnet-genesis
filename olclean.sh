#!/bin/bash
rm -r $OLDATA/nodedata/*
rm -r $OLDATA/consensus/data/*
rm $OLDATA/*.log
if [ -e $OLDATA/genesis.json ]
then
	rm $OLDATA/genesis.json
  echo -e "genesis in OLDATA is removed"
fi

if [ -e $OLDATA/consensus/config/genesis.json ]
then
	rm $OLDATA/consensus/config/genesis.json
  echo -e "genesis in OLDATA/consensus/config is removed"
fi
