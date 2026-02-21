#!/bin/bash
set -e

WORKSPACE="$1"
LIBRARY="$2"
IID="$3"
DATE="$4"

# Use today's date if not provided
if [ -z "$DATE" ]; then
  DATE=$(date +%Y-%m-%d)
fi

DIR="$WORKSPACE/tonewood/$LIBRARY"
LOGDIR="$DIR/logs"
FILE="$LOGDIR/${IID}-${DATE}.md"

# Ensure directories exist
mkdir -p "$LOGDIR" "$DIR/images"

# Don't overwrite existing files
if [ -f "$FILE" ]; then
  echo "File already exists: $FILE"
  code "$FILE"
  exit 0
fi

cat > "$FILE" << EOF
---
type: adjustment-log
date: $DATE
iid: $IID
status-change: checked-in → on-bench
technician: "Jan Bilinski"
tags: [adjustment-log]
---

# Repair Log: {{ page.date }} - [[$IID]]

**Date**: {{ page.date }}
**Instrument ID**: [[$IID]]
**Status Change**: {{ page.status-change }}

---

## Initial Condition

## Work Performed

- [ ] Task 1
- [ ] Task 2
- [ ] Task 3

## Parts/Materials Used

-

## Observations & Recommendations

## Final Status

**Ready to deploy**: [ ] Yes [ ] No
**Additional work needed**:

---

## Photos

### Before

![Before photo 1](../images/${IID}_${DATE}_before_01.jpg)

### During Work

![Work photo 1](../images/${IID}_${DATE}_work_01.jpg)

### After

![After photo 1](../images/${IID}_${DATE}_after_01.jpg)
EOF

code "$FILE"
