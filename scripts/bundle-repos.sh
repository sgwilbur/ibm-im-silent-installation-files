#!/bin/bash
# Helper script for bundling individual IM repos into custom IM repos
# @sgwilbur

pucl=/Applications/IBM/PackagingUtility/PUCL
work_dir=/tmp/PU-testing
extracts_dir=${work_dir}/extracts
repos=${extracts_dir}/RITA_SETUP/disk1/,${extracts_dir}/RITPP_SETUP/,${extracts_dir}/RPTAGENT_SETUP/,${extracts_dir}/RTCP_SETUP/disk1/
target_repo=/tmp/PU-testing/repo

for i in `$pucl listAvailablePackages -long -repositories $repos | awk {'print $3'}`
do
  echo "Copying ${i} to ${target_repo}"
  sudo $pucl copy "${i}" -repositories ${repos} -target ${target_repo} -acceptLicense
done
