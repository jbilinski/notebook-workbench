#!/bin/bash
set -e

WORKSPACE="$1"
LIBRARY="$2"
IID="$3"

DIR="$WORKSPACE/tonewood/$LIBRARY"
FILE="$DIR/$IID.md"

# Create directory structure
mkdir -p "$DIR/images" "$DIR/logs"
touch "$DIR/images/.gitkeep" "$DIR/logs/.gitkeep"

# Don't overwrite existing files
if [ -f "$FILE" ]; then
  echo "File already exists: $FILE"
  code "$FILE"
  exit 0
fi

TODAY=$(date +%Y-%m-%d)

cat > "$FILE" << EOF
---
type: viol
iid: $IID
size: ""
tuning: ""
template: "Stradivari repro"
maker: ""
model: "N/A"
provenance: ""
anno: ""
build_quality: ""
top: [Split, Spruce]
back: [Split, Maple]
varnish: []
library: "$LIBRARY"
sn: ""
status: checked-in
initial_inspection_date: $TODAY
tags: [viol]
---
# {{ page.iid }}

## {{ page.size }} {{ page.build_quality }} {{ page.tuning }}

{{ page.template }} by {{ page.maker }} of {{ page.provenance }}
**Model** {{ page.model }} **built** {{ page.anno }}
**SN:** {{ page.sn }}

## Features

Body: {{ page.top | join: " " }} top, {{ page.back | join: " " }} back
Varnish: {{ page.varnish | join: ", " }}

## Unique Details

## Image

![Main photo](./images/${IID}_main.jpg)

## Target Usage

## Current Condition

**Status:** {{ page.status }}

## Recommendations

## Adjustments history

{% include adjustment-history.html %}

## Research and Notes

### Origin, siblings, history
EOF

# Add to library index if it exists
INDEX="$DIR/index.md"
if [ -f "$INDEX" ]; then
  if ! grep -q "\[\[$IID\]\]" "$INDEX"; then
    if grep -q "## Active Repairs" "$INDEX"; then
      sed -i '' "/## Active Repairs/i\\
- [[$IID]]
" "$INDEX"
    else
      echo "- [[$IID]]" >> "$INDEX"
    fi
  fi
fi

code "$FILE"
