#!/bin/bash
rm -r $OLDATA/nodedata/*
rm -r $OLDATA/consensus/data/*
rm $OLDATA/consensus/config/genesis.json
rm $OLDATA/*.log
rm $OLDATA/genesis.json
