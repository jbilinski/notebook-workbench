---
type: adjustment-log
date: $FOAM_DATE_YEAR-$FOAM_DATE_MONTH-$FOAM_DATE_DATE
iid: ${1:instrument-id}
status-change: checked-in → on-bench
technician: "Jan Bilinski"
tags: [adjustment-log]
---

# Repair Log: {{ page.date }} - [[${1:instrument-id}]]

**Date**: {{ page.date }}
**Instrument ID**: [[${1:instrument-id}]]
**Status Change**: {{ page.status-change }}

---

## Initial Condition

${2:Describe the condition when checked in}

## Work Performed

- [ ] ${3:Task 1}
- [ ] Task 2
- [ ] Task 3

## Parts/Materials Used

- ${4:}

## Observations & Recommendations

${5:Any notes, future maintenance needs, etc.}

## Final Status

**Ready to deploy**: [ ] Yes [ ] No
**Additional work needed**: ${6:}

---

## Photos

### Before

![Before photo 1](../images/${1:instrument-id}_before_01.jpg)

### During Work

![Work photo 1](../images/${1:instrument-id}_work_01.jpg)

### After

![After photo 1](../images/${1:instrument-id}_after_01.jpg)
