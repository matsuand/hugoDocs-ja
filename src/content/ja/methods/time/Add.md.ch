%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: Add
description: Returns the given time plus the given duration.
categories: []
keywords: []
action:
  related:
    - functions/time/AsTime
    - functions/time/Duration
    - functions/time/ParseDuration
  returnType: time.Time
  signatures: [TIME.Add DURATION]
---
@y
---
title: Add
description: Returns the given time plus the given duration.
categories: []
keywords: []
action:
  related:
    - functions/time/AsTime
    - functions/time/Duration
    - functions/time/ParseDuration
  returnType: time.Time
  signatures: [TIME.Add DURATION]
---
@z

@x
```go-html-template
{{ $t := time.AsTime "2023-01-27T23:44:58-08:00" }}
@y
```go-html-template
{{ $t := time.AsTime "2023-01-27T23:44:58-08:00" }}
@z

@x
{{ $d1 = time.ParseDuration "3h20m10s" }}
{{ $d2 = time.ParseDuration "-3h20m10s" }}
@y
{{ $d1 = time.ParseDuration "3h20m10s" }}
{{ $d2 = time.ParseDuration "-3h20m10s" }}
@z

@x
{{ $t.Add $d1 }} → 2023-01-28 03:05:08 -0800 PST
{{ $t.Add $d2 }} → 2023-01-27 20:24:48 -0800 PST
```
@y
{{ $t.Add $d1 }} → 2023-01-28 03:05:08 -0800 PST
{{ $t.Add $d2 }} → 2023-01-27 20:24:48 -0800 PST
```
@z
