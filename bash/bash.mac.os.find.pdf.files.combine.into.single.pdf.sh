#!/bin/bash
# Use Bash FIND to from multiple sources to combine into a single PDF
# Tested With 10.12.6
# Last updated at 05/01/2018
# bash.mac.os.find.pdf.files.combine.into.single.pdf
# ver: 0.0.1
# (http://ResearchRanks.com.)
# Copyright 2011-2018 Research Ranks, LLC.
# Licensed under MIT 

# Could change `-maxdepth` for all subfolders
# Debuged: edge case where passing in `xargs` parameters created an error with quoted file names with spaces and escapable charactors (- , _ ~  !) etc.

find . -maxdepth 1 \
-type f \
-iname "*.pdf" \
-exec echo -n '"{}" ' \; | \
xargs "/System/Library/Automator/Combine PDF Pages.action/Contents/Resources/join.py" -o ~/desktop/combined-"$(date)".pdf {}