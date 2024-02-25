%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: Hours
description: Returns the time.Duration value as a floating point number of hours.
categories: []
keywords: []
action:
  related:
    - functions/time/Duration
    - functions/time/ParseDuration
  returnType: float64
  signatures: [DURATION.Hours]
---
@y
---
title: Hours
description: Returns the time.Duration value as a floating point number of hours.
categories: []
keywords: []
action:
  related:
    - functions/time/Duration
    - functions/time/ParseDuration
  returnType: float64
  signatures: [DURATION.Hours]
---
@z

@x
```go-html-template
{{ $d = time.ParseDuration "3.5h2.5m1.5s" }}
{{ $d.Hours }} → 3.5420833333333333
```
@y
```go-html-template
{{ $d = time.ParseDuration "3.5h2.5m1.5s" }}
{{ $d.Hours }} → 3.5420833333333333
```
@z
