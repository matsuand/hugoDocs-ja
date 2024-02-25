%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: Equal
description: Reports whether TIME1 is equal to TIME2.
categories: []
keywords: []
action:
  related:
    - methods/time/After
    - methods/time/Before
    - functions/time/AsTime
  returnType: bool
  signatures: [TIME1.Equal TIME2]
---
@y
---
title: Equal
description: Reports whether TIME1 is equal to TIME2.
categories: []
keywords: []
action:
  related:
    - methods/time/After
    - methods/time/Before
    - functions/time/AsTime
  returnType: bool
  signatures: [TIME1.Equal TIME2]
---
@z

@x
```go-html-template
{{ $t1 := time.AsTime "2023-01-01T17:00:00-08:00" }}
{{ $t2 := time.AsTime "2023-01-01T20:00:00-05:00" }}
@y
```go-html-template
{{ $t1 := time.AsTime "2023-01-01T17:00:00-08:00" }}
{{ $t2 := time.AsTime "2023-01-01T20:00:00-05:00" }}
@z

@x
{{ $t1.Equal $t2 }} → true
```
@y
{{ $t1.Equal $t2 }} → true
```
@z
