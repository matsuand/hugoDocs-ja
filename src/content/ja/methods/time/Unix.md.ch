%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: Unix
description: Returns the given time.Time value expressed as the number of seconds elapsed since January 1, 1970 UTC. 
categories: []
action:
  related:
    - methods/time/UnixMilli
    - methods/time/UnixMicro
    - methods/time/UnixNano
    - functions/time/AsTime
  returnType: int64
  signatures: [TIME.Unix]
aliases: [/functions/unix]
---
@y
---
title: Unix
description: Returns the given time.Time value expressed as the number of seconds elapsed since January 1, 1970 UTC. 
categories: []
action:
  related:
    - methods/time/UnixMilli
    - methods/time/UnixMicro
    - methods/time/UnixNano
    - functions/time/AsTime
  returnType: int64
  signatures: [TIME.Unix]
aliases: [/functions/unix]
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
{{ $t.Unix }} → 1674891898
```
@y
```go-html-template
{{ $t := time.AsTime "2023-01-27T23:44:58-08:00" }}
{{ $t.Unix }} → 1674891898
```
@z
