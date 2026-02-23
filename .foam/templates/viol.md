---
type: viol
iid: ${1:instrument-id}
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
library: ""
sn: ""
status: checked-in
initial_inspection_date: $FOAM_DATE_YEAR-$FOAM_DATE_MONTH-$FOAM_DATE_DATE
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

![Main photo](./images/${1:instrument-id}_main.jpg)

## Target Usage

## Current Condition

**Status:** {{ page.status }}

## Recommendations

## Adjustments history

{% include adjustment-history.html %}

## Research and Notes

### Origin, siblings, history
