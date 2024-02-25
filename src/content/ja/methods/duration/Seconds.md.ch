%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: Seconds
description: Returns the time.Duration value as a floating point number of seconds.
categories: []
keywords: []
action:
  related:
    - functions/time/Duration
    - functions/time/ParseDuration
  returnType: float64
  signatures: [DURATION.Seconds]
---
@y
---
title: Seconds
description: Returns the time.Duration value as a floating point number of seconds.
categories: []
keywords: []
action:
  related:
    - functions/time/Duration
    - functions/time/ParseDuration
  returnType: float64
  signatures: [DURATION.Seconds]
---
@z

@x
```go-html-template
{{ $d = time.ParseDuration "3.5h2.5m1.5s" }}
{{ $d.Seconds }} → 12751.5
```
@y
```go-html-template
{{ $d = time.ParseDuration "3.5h2.5m1.5s" }}
{{ $d.Seconds }} → 12751.5
```
@z
