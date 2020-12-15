#!/bin/bash

pubkey=$(cat $OLDATA/consensus/config/priv_validator_key.json | grep -oP -m 1 '(?<="value": ")(.*?)(?=")')
privkey=$(cat $OLDATA/consensus/config/priv_validator_key.json | grep -oP '(?<="value": ")(.*?)(?=")' | tail -n1)

olclient account add --pubkey $pubkey --privkey $privkey
