#!/bin/bash
# Helper script for bundling individual IM repos into custom IM repos
# @sgwilbur

# Change to take these in on the command line
# comma separated list or absolute paths
repos=$1
# absolute path to target
target_repo=$2

pucl=/Applications/IBM/PackagingUtility/PUCL
if [[ "$1" == ""  || "$2" == ""  ]]; then
  echo "Parameters missing!!"
  echo "Usage: $0 /src/repo1[,/src/repo2,/src/repo3] /path/target_repo"
  exit 1
fi

for i in `$pucl listAvailablePackages -long -repositories $repos | awk {'print $3'}`
do
  echo "Copying ${i} to ${target_repo}"
  sudo $pucl copy "${i}" -repositories ${repos} -target ${target_repo} -acceptLicense
done
