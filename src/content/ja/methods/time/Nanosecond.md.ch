%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: Nanosecond
description: Returns the nanosecond offset within the second of the given time.Time value, in the range [0, 999999999].
categories: []
keywords: []
action:
  related:
    - functions/time/AsTime
  returnType: int
  signatures: [TIME.Nanosecond]
---
@y
---
title: Nanosecond
description: Returns the nanosecond offset within the second of the given time.Time value, in the range [0, 999999999].
categories: []
keywords: []
action:
  related:
    - functions/time/AsTime
  returnType: int
  signatures: [TIME.Nanosecond]
---
@z

@x
```go-html-template
{{ $t := time.AsTime "2023-01-27T23:44:58-08:00" }}
{{ $t.Nanosecond }} → 0
```
@y
```go-html-template
{{ $t := time.AsTime "2023-01-27T23:44:58-08:00" }}
{{ $t.Nanosecond }} → 0
```
@z
