%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: Sub
description: Returns the duration computed by subtracting TIME2 from TIME1.
categories: []
keywords: []
action:
  related:
    - functions/time/AsTime
  returnType: time.Duration
  signatures: [TIME1.Sub TIME2]
---
@y
---
title: Sub
description: Returns the duration computed by subtracting TIME2 from TIME1.
categories: []
keywords: []
action:
  related:
    - functions/time/AsTime
  returnType: time.Duration
  signatures: [TIME1.Sub TIME2]
---
@z

@x
```go-html-template
{{ $t1 := time.AsTime "2023-01-27T23:44:58-08:00" }}
{{ $t2 := time.AsTime "2023-01-26T22:34:38-08:00" }}
@y
```go-html-template
{{ $t1 := time.AsTime "2023-01-27T23:44:58-08:00" }}
{{ $t2 := time.AsTime "2023-01-26T22:34:38-08:00" }}
@z

@x
{{ $t1.Sub $t2 }} → 25h10m20s
```
@y
{{ $t1.Sub $t2 }} → 25h10m20s
```
@z
