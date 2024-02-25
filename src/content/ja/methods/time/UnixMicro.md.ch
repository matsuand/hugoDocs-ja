%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: UnixMicro
description: Returns the given time.Time value expressed as the number of microseconds elapsed since January 1, 1970 UTC. 
categories: []
keywords: []
action:
  related:
    - methods/time/Unix
    - methods/time/UnixMilli
    - methods/time/UnixNano
    - functions/time/AsTime
  returnType: int64
  signatures: [TIME.UnixMicro]
---
@y
---
title: UnixMicro
description: Returns the given time.Time value expressed as the number of microseconds elapsed since January 1, 1970 UTC. 
categories: []
keywords: []
action:
  related:
    - methods/time/Unix
    - methods/time/UnixMilli
    - methods/time/UnixNano
    - functions/time/AsTime
  returnType: int64
  signatures: [TIME.UnixMicro]
---
@z

@x
See [Unix epoch](https://en.wikipedia.org/wiki/Unix_time).
@y
See [Unix epoch](https://en.wikipedia.org/wiki/Unix_time).
@z

@x
```go-html-template
{{ $t := time.AsTime "2023-01-27T23:44:58-08:00" }}
{{ $t.UnixMicro }} → 1674891898000000
```
@y
```go-html-template
{{ $t := time.AsTime "2023-01-27T23:44:58-08:00" }}
{{ $t.UnixMicro }} → 1674891898000000
```
@z
