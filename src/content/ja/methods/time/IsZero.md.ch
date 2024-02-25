%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: IsZero
description: Reports whether the given time.Time value represents the zero time instant, January 1, year 1, 00:00:00 UTC.
categories: []
keywords: []
action:
  related:
    - functions/time/AsTime
  returnType: bool
  signatures: [TIME.IsZero]
---
@y
---
title: IsZero
description: Reports whether the given time.Time value represents the zero time instant, January 1, year 1, 00:00:00 UTC.
categories: []
keywords: []
action:
  related:
    - functions/time/AsTime
  returnType: bool
  signatures: [TIME.IsZero]
---
@z

@x
````go-html-template
{{ $t1 := time.AsTime "2023-01-01T00:00:00-08:00" }}
{{ $t2 := time.AsTime "0001-01-01T00:00:00-00:00" }}
@y
````go-html-template
{{ $t1 := time.AsTime "2023-01-01T00:00:00-08:00" }}
{{ $t2 := time.AsTime "0001-01-01T00:00:00-00:00" }}
@z

@x
{{ $t1.IsZero }} → false
{{ $t2.IsZero }} → true
```
@y
{{ $t1.IsZero }} → false
{{ $t2.IsZero }} → true
```
@z
