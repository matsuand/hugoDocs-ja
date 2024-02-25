%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: Nanoseconds
description: Returns the time.Duration value as an integer nanosecond count.
categories: []
keywords: []
action:
  related:
    - functions/time/Duration
    - functions/time/ParseDuration
  returnType: int64
  signatures: [DURATION.Nanoseconds]
---
@y
---
title: Nanoseconds
description: Returns the time.Duration value as an integer nanosecond count.
categories: []
keywords: []
action:
  related:
    - functions/time/Duration
    - functions/time/ParseDuration
  returnType: int64
  signatures: [DURATION.Nanoseconds]
---
@z

@x
```go-html-template
{{ $d = time.ParseDuration "3.5h2.5m1.5s" }}
{{ $d.Nanoseconds }} → 12751500000000
```
@y
```go-html-template
{{ $d = time.ParseDuration "3.5h2.5m1.5s" }}
{{ $d.Nanoseconds }} → 12751500000000
```
@z
