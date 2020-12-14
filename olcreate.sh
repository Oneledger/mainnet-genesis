#!/bin/bash

pubkey=$(cat consensus/config/priv_validator_key.json | ggrep -oP -m 1 '(?<="value": ")(.*?)(?=")')
privkey=$(cat consensus/config/priv_validator_key.json | ggrep -oP '(?<="value": ")(.*?)(?=")' | tail -n1)

olclient account add --pubkey $pubkey --privkey $privkey