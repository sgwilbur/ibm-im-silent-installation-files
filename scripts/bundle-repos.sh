#!/bin/bash
# Helper script for bundling individual IM repos into custom IM repos
# @sgwilbur

# Change to take these in on the command line
repos=$1
target_repo=$2

pucl=/Applications/IBM/PackagingUtility/PUCL

for i in `$pucl listAvailablePackages -long -repositories $repos | awk {'print $3'}`
do
  echo "Copying ${i} to ${target_repo}"
  sudo $pucl copy "${i}" -repositories ${repos} -target ${target_repo} -acceptLicense
done
