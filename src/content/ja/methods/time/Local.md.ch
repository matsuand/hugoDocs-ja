%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: Local
description: Returns the given time.Time value with the location set to local time.
categories: []
keywords: []
action:
  related:
    - methods/time/UTC
    - functions/time/AsTime
  returnType: time.Time
  signatures: [TIME.Local]
---
@y
---
title: Local
description: Returns the given time.Time value with the location set to local time.
categories: []
keywords: []
action:
  related:
    - methods/time/UTC
    - functions/time/AsTime
  returnType: time.Time
  signatures: [TIME.Local]
---
@z

@x
```go-html-template
{{ $t := time.AsTime "2023-01-28T07:44:58+00:00" }}
{{ $t.Local }} → 2023-01-27 23:44:58 -0800 PST
```
@y
```go-html-template
{{ $t := time.AsTime "2023-01-28T07:44:58+00:00" }}
{{ $t.Local }} → 2023-01-27 23:44:58 -0800 PST
```
@z
