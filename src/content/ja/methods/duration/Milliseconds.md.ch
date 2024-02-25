%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: Milliseconds
description: Returns the time.Duration value as an integer millisecond count.
categories: []
keywords: []
action:
  related:
    - functions/time/Duration
    - functions/time/ParseDuration
  returnType: int64
  signatures: [DURATION.Milliseconds]
---
@y
---
title: Milliseconds
description: Returns the time.Duration value as an integer millisecond count.
categories: []
keywords: []
action:
  related:
    - functions/time/Duration
    - functions/time/ParseDuration
  returnType: int64
  signatures: [DURATION.Milliseconds]
---
@z

@x
```go-html-template
{{ $d = time.ParseDuration "3.5h2.5m1.5s" }}
{{ $d.Milliseconds }} → 12751500
```
@y
```go-html-template
{{ $d = time.ParseDuration "3.5h2.5m1.5s" }}
{{ $d.Milliseconds }} → 12751500
```
@z
