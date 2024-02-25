%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: Year
description: Returns the year of the given time.Time value.
categories: []
keywords: []
action:
  related:
    - methods/time/Month
    - methods/time/Day
    - methods/time/Hour
    - methods/time/Minute
    - methods/time/Second
    - functions/time/AsTime
  returnType: int
  signatures: [TIME.Year]
---
@y
---
title: Year
description: Returns the year of the given time.Time value.
categories: []
keywords: []
action:
  related:
    - methods/time/Month
    - methods/time/Day
    - methods/time/Hour
    - methods/time/Minute
    - methods/time/Second
    - functions/time/AsTime
  returnType: int
  signatures: [TIME.Year]
---
@z

@x
```go-html-template
{{ $t := time.AsTime "2023-01-27T23:44:58-08:00" }}
{{ $t.Year }} → 2023
```
@y
```go-html-template
{{ $t := time.AsTime "2023-01-27T23:44:58-08:00" }}
{{ $t.Year }} → 2023
```
@z
