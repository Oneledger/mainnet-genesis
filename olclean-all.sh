#!/bin/bash
rm -r $OLDATA/nodedata/chainstate.db
rm -r $OLDATA/nodedata/lockScriptStore.db
rm -r $OLDATA/nodedata/validatorJobs.db
rm -r $OLDATA/consensus/data/*
rm $OLDATA/*.log
rm $OLDATA/consensus/config/*
