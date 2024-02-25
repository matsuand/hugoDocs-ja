%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: UTC
description: Returns the given time.Time value with the location set to UTC.
categories: []
keywords: []
action:
  related:
    - methods/time/Local
    - functions/time/AsTime
  returnType: time.Time
  signatures: [TIME.UTC]
---
@y
---
title: UTC
description: Returns the given time.Time value with the location set to UTC.
categories: []
keywords: []
action:
  related:
    - methods/time/Local
    - functions/time/AsTime
  returnType: time.Time
  signatures: [TIME.UTC]
---
@z

@x
```go-html-template
{{ $t := time.AsTime "2023-01-27T23:44:58-08:00" }}
{{ $t.UTC }} → 2023-01-28 07:44:58 +0000 UTC
@y
```go-html-template
{{ $t := time.AsTime "2023-01-27T23:44:58-08:00" }}
{{ $t.UTC }} → 2023-01-28 07:44:58 +0000 UTC
@z
