%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: Abs
description: Returns the absolute value of the given time.Duration value.
categories: []
keywords: []
action:
  related:
    - functions/time/Duration
    - functions/time/ParseDuration
  returnType: time.Duration
  signatures: [DURATION.Abs]
---
@y
---
title: Abs
description: Returns the absolute value of the given time.Duration value.
categories: []
keywords: []
action:
  related:
    - functions/time/Duration
    - functions/time/ParseDuration
  returnType: time.Duration
  signatures: [DURATION.Abs]
---
@z

@x
```go-html-template
{{ $d = time.ParseDuration "-3h" }}
{{ $d.Abs }} → 3h0m0s
```
@y
```go-html-template
{{ $d = time.ParseDuration "-3h" }}
{{ $d.Abs }} → 3h0m0s
```
@z
