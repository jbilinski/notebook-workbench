#!/bin/bash
set -e

WORKSPACE="$1"
LIBRARY="$2"

DIR="$WORKSPACE/tonewood/$LIBRARY"
INDEX="$DIR/index.md"

# Create directory structure
mkdir -p "$DIR/images" "$DIR/logs"
touch "$DIR/images/.gitkeep" "$DIR/logs/.gitkeep"

# Don't overwrite existing index
if [ -f "$INDEX" ]; then
  echo "Library already exists: $INDEX"
  code "$INDEX"
  exit 0
fi

# Capitalize first letter of library name for display
DISPLAY_NAME="$(echo "$LIBRARY" | sed 's/-/ /g' | awk '{for(i=1;i<=NF;i++) $i=toupper(substr($i,1,1)) substr($i,2)}1')"

cat > "$INDEX" << EOF
---
type: library-index
library: $LIBRARY
tags: [library-index]
---

# $DISPLAY_NAME Instrument Library

## Overview

This library contains instruments for .

## Instruments

<!-- Instruments are auto-added here when created via the task -->

## Active Repairs

<!-- List instruments currently in repair -->

## Notes
EOF

# Add to top-level tonewood index
TOP_INDEX="$WORKSPACE/tonewood/index.md"
if [ -f "$TOP_INDEX" ]; then
  if ! grep -q "\[\[$LIBRARY" "$TOP_INDEX"; then
    echo "- [[$LIBRARY/index|$DISPLAY_NAME]]" >> "$TOP_INDEX"
  fi
fi

code "$INDEX"
