%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: IsDST
description: Reports whether the given time.Time value is in Daylight Savings Time.
categories: []
keywords: []
action:
  related:
    - functions/time/AsTime
  returnType: bool
  signatures: [TIME.IsDST]
---
@y
---
title: IsDST
description: Reports whether the given time.Time value is in Daylight Savings Time.
categories: []
keywords: []
action:
  related:
    - functions/time/AsTime
  returnType: bool
  signatures: [TIME.IsDST]
---
@z

@x
```go-html-template
{{ $t1 := time.AsTime "2023-01-01T00:00:00-08:00" }}
{{ $t2 := time.AsTime "2023-07-01T00:00:00-07:00" }}
@y
```go-html-template
{{ $t1 := time.AsTime "2023-01-01T00:00:00-08:00" }}
{{ $t2 := time.AsTime "2023-07-01T00:00:00-07:00" }}
@z

@x
{{ $t1.IsDST }} → false
{{ $t2.IsDST }} → true
```
@y
{{ $t1.IsDST }} → false
{{ $t2.IsDST }} → true
```
@z
