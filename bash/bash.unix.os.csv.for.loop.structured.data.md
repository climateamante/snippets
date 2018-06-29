```bash
#!/bin/bash
# For Loop | Iterate On Create CSV Structured Data
# Example: Create 10 Rows Of UID Data
# Tested With OS.MAC.10.12.6
# Last updated at 06/28/2018
# ver: 0.0.1
# (ResearchRanks.com | @ClimateAmante )
# Copyright 2011-2018 Research Ranks, LLC.
# Licensed under MIT
```

```bash
for sequence in $(seq -f "%04g" 01 10); do \
	echo "NAME,\"UID:${sequence}\",\"\""
done;
```