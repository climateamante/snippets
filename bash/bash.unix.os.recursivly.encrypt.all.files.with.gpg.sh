#!/bin/bash
# GPG Encrypt All Files Recursivly in the Working Directory
# Tested With OS.MAC.10.12.6
# Last updated at 06/25/2018
# ver: 0.0.1
# (ResearchRanks.com | @ClimateAmante )
# Copyright 2011-2018 Research Ranks, LLC.
# Licensed under MIT 

temp_total_number_of_files=$(ls | cat -n | wc -l | sed '/^$/d;s/[[:blank:]]//g');
ls | \
cat -n | \
while read sequence file_name; do \
echo "encrypting: ${sequence} of ${temp_total_number_of_files}";
echo "passphrase_goes_here..." | \
gpg \
 --yes \
--batch \
--quiet \
--passphrase-fd 0 \
--compress-level 0 \
--symmetric "${file_name}";
done;
