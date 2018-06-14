#!/bin/bash
# Use Bash FIND to recursivly move all files from sub-directories into a single parent folder
# Tested With OS.MAC.10.12.6
# Last updated at 06/13/2018
# ver: 0.0.1
# (ResearchRanks.com | @ClimateAmante )
# Copyright 2011-2018 Research Ranks, LLC.
# Licensed under MIT 


# replace maxdepth with estimated number of sub folders | 100 is used as a rough example

find \
. -maxdepth 100 \( ! -type d \) \
-exec sh -c 'mv  "$@" /location/of/new/parent/folder/' _