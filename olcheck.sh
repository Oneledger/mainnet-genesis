#!/bin/bash
echo '$OLDATA:'
echo $OLDATA
echo
location_olf=$(which olfullnode)
location_olc=$(which olclient)
echo 'binary location'
echo $location_olf
echo $location_olc
echo
echo 'olfullnode version'
echo $(olfullnode version)
echo
echo md5
echo $(md5sum $location_olf)
echo $(md5sum $location_olc)
