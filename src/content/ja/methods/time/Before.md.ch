%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: Before
description: Reports whether TIME1 is before TIME2.
categories: []
keywords: []
action:
  related:
    - methods/time/After
    - methods/time/Equal
    - functions/time/AsTime
  returnType: bool
  signatures: [TIME1.Before TIME2]
---
@y
---
title: Before
description: Reports whether TIME1 is before TIME2.
categories: []
keywords: []
action:
  related:
    - methods/time/After
    - methods/time/Equal
    - functions/time/AsTime
  returnType: bool
  signatures: [TIME1.Before TIME2]
---
@z

@x
```go-html-template
{{ $t1 := time.AsTime "2023-01-01T17:00:00-08:00" }}
{{ $t2 := time.AsTime "2030-01-01T17:00:00-08:00" }}
@y
```go-html-template
{{ $t1 := time.AsTime "2023-01-01T17:00:00-08:00" }}
{{ $t2 := time.AsTime "2030-01-01T17:00:00-08:00" }}
@z

@x
{{ $t1.Before $t2 }} → true
@y
{{ $t1.Before $t2 }} → true
@z
