#!/bin/bash
# Recursively Pipe File Into TAR, Then Piped Into GPG Encrypt. In Sequential Order In The Current Folder
# Tested With OS.MAC.10.12.6
# Last updated at 06/28/2018
# ver: 0.0.1
# (ResearchRanks.com | @ClimateAmante )
# Copyright 2011-2018 Research Ranks, LLC.
# Licensed under MIT
# Note: EdgeCase with coping and pasting into a terminal session - formated for spaces over tabs.

temp_total=$(ls | cat -n | wc -l | sed '/^$/d;s/[[:blank:]]//g'); \
temp_current_number=1; \
ls | \
cat -n | \
while read sequence file_name; do \
    temp_active_number="$(echo $(printf '%02d' \ ${temp_current_number}))";\
    echo "encrypting: ${sequence} of ${temp_total}";\
    echo "encrypting: ${file_name}";\
    tar \
    -c -f - "${file_name}" | \
    gpg \
    --yes \
    --batch \
    --quiet \
    --passphrase $(echo "secure password goes here") \
    --compress-level 0 \
    --symmetric \
    --output - >> \
    "archive.file.${temp_active_number}.tar.gpg"; \
    ((temp_current_number++)); \
done;