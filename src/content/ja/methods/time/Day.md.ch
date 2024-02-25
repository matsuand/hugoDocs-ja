%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: Day
description: Returns the day of the month of the given time.Time value.
categories: []
keywords: []
action:
  related:
    - methods/time/Year
    - methods/time/Month
    - methods/time/Hour
    - methods/time/Minute
    - methods/time/Second
    - functions/time/AsTime
  returnType: int
  signatures: [TIME.Day]
---
@y
---
title: Day
description: Returns the day of the month of the given time.Time value.
categories: []
keywords: []
action:
  related:
    - methods/time/Year
    - methods/time/Month
    - methods/time/Hour
    - methods/time/Minute
    - methods/time/Second
    - functions/time/AsTime
  returnType: int
  signatures: [TIME.Day]
---
@z

@x
```go-html-template
{{ $t := time.AsTime "2023-01-27T23:44:58-08:00" }}
{{ $t.Day }} → 27
```
@y
```go-html-template
{{ $t := time.AsTime "2023-01-27T23:44:58-08:00" }}
{{ $t.Day }} → 27
```
@z
