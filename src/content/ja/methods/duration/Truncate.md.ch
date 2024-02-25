%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: Truncate
description: Returns the result of rounding DURATION1 toward zero to a multiple of DURATION2.
categories: []
keywords: []
action:
  related:
  related:
    - functions/time/Duration
    - functions/time/ParseDuration
  returnType: time.Duration
  signatures: [DURATION1.Truncate DURATION2]
---
@y
---
title: Truncate
description: Returns the result of rounding DURATION1 toward zero to a multiple of DURATION2.
categories: []
keywords: []
action:
  related:
  related:
    - functions/time/Duration
    - functions/time/ParseDuration
  returnType: time.Duration
  signatures: [DURATION1.Truncate DURATION2]
---
@z

@x
```go-html-template
{{ $d = time.ParseDuration "3.5h2.5m1.5s" }}
@y
```go-html-template
{{ $d = time.ParseDuration "3.5h2.5m1.5s" }}
@z

@x
{{ $d.Truncate (time.ParseDuration "2h") }} → 2h0m0s
{{ $d.Truncate (time.ParseDuration "3m") }} → 3h30m0s
{{ $d.Truncate (time.ParseDuration "4s") }} → 3h32m28s
```
@y
{{ $d.Truncate (time.ParseDuration "2h") }} → 2h0m0s
{{ $d.Truncate (time.ParseDuration "3m") }} → 3h30m0s
{{ $d.Truncate (time.ParseDuration "4s") }} → 3h32m28s
```
@z
