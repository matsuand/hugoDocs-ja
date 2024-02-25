%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: After
description: Reports whether TIME1 is after TIME2.
categories: []
keywords: []
action:
  related:
    - methods/time/Before
    - methods/time/Equal
    - functions/time/AsTime
  returnType: bool
  signatures: [TIME1.After TIME2]
---
@y
---
title: After
description: Reports whether TIME1 is after TIME2.
categories: []
keywords: []
action:
  related:
    - methods/time/Before
    - methods/time/Equal
    - functions/time/AsTime
  returnType: bool
  signatures: [TIME1.After TIME2]
---
@z

@x
```go-html-template
{{ $t1 := time.AsTime "2023-01-01T17:00:00-08:00" }}
{{ $t2 := time.AsTime "2010-01-01T17:00:00-08:00" }}
@y
```go-html-template
{{ $t1 := time.AsTime "2023-01-01T17:00:00-08:00" }}
{{ $t2 := time.AsTime "2010-01-01T17:00:00-08:00" }}
@z

@x
{{ $t1.After $t2 }} → true
```
@y
{{ $t1.After $t2 }} → true
```
@z
