---
type: adjustment-log
date: $CURRENT_YEAR-$CURRENT_MONTH-$CURRENT_DATE
iid: $1
status-change: checked-in → ready-to-deploy
technician: "Jan Bilinski"
tags: [adjustment-log]
---

# Repair Log: $CURRENT_YEAR-$CURRENT_MONTH-$CURRENT_DATE - [[${1:instrument-id}]]

**Date**: $date  
**Instrument ID**: [[$1]]  
**Status Change**: $status-change  

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

![Before photo 1](../images/$1_$CURRENT_YEAR$CURRENT_MONTH${CURRENT_DATE}_before_01.jpg)

### During Work

![Work photo 1](../images/$1_$CURRENT_YEAR$CURRENT_MONTH${CURRENT_DATE}_work_01.jpg)

### After

![After photo 1](../images/$1_$CURRENT_YEAR$CURRENT_MONTH${CURRENT_DATE}_after_01.jpg)
