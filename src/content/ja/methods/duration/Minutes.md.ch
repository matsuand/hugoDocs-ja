%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: Minutes
description: Returns the time.Duration value as a floating point number of minutes.
categories: []
keywords: []
action:
  related:
    - functions/time/Duration
    - functions/time/ParseDuration
  returnType: float64
  signatures: [DURATION.Minutes]
---
@y
---
title: Minutes
description: Returns the time.Duration value as a floating point number of minutes.
categories: []
keywords: []
action:
  related:
    - functions/time/Duration
    - functions/time/ParseDuration
  returnType: float64
  signatures: [DURATION.Minutes]
---
@z

@x
```go-html-template
{{ $d = time.ParseDuration "3.5h2.5m1.5s" }}
{{ $d.Minutes }} → 212.525
```
@y
```go-html-template
{{ $d = time.ParseDuration "3.5h2.5m1.5s" }}
{{ $d.Minutes }} → 212.525
```
@z
