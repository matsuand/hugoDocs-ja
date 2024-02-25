%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: Round
description: Returns the result of rounding DURATION1 to the nearest multiple of DURATION2.
categories: []
keywords: []
action:
  related:
    - functions/time/Duration
    - functions/time/ParseDuration
  returnType:
  signatures: [DURATION1.Round DURATION2]
---
@y
---
title: Round
description: Returns the result of rounding DURATION1 to the nearest multiple of DURATION2.
categories: []
keywords: []
action:
  related:
    - functions/time/Duration
    - functions/time/ParseDuration
  returnType:
  signatures: [DURATION1.Round DURATION2]
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
{{ $d.Round (time.ParseDuration "2h") }} → 4h0m0s
{{ $d.Round (time.ParseDuration "3m") }} → 3h33m0s
{{ $d.Round (time.ParseDuration "4s") }} → 3h32m32s
```
@y
{{ $d.Round (time.ParseDuration "2h") }} → 4h0m0s
{{ $d.Round (time.ParseDuration "3m") }} → 3h33m0s
{{ $d.Round (time.ParseDuration "4s") }} → 3h32m32s
```
@z
