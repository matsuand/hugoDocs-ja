%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: time.ParseDuration
description: Returns a time.Duration value by parsing the given duration string.
categories: []
keywords: []
action:
  aliases: []
  related:
    - functions/time/AsTime
    - functions/time/Duration
    - functions/time/Format
    - functions/time/Now
  returnType: time.Duration
  signatures: [time.ParseDuration DURATION]
aliases: [/functions/time.parseduration]
---
@y
---
title: time.ParseDuration
description: Returns a time.Duration value by parsing the given duration string.
categories: []
keywords: []
action:
  aliases: []
  related:
    - functions/time/AsTime
    - functions/time/Duration
    - functions/time/Format
    - functions/time/Now
  returnType: time.Duration
  signatures: [time.ParseDuration DURATION]
aliases: [/functions/time.parseduration]
---
@z

@x
The `time.ParseDuration` function returns a time.Duration value that you can use with any of the `Duration` [methods].
@y
The `time.ParseDuration` function returns a time.Duration value that you can use with any of the `Duration` [methods].
@z

@x
A duration string is a possibly signed sequence of decimal numbers, each with optional fraction and a unit suffix, such as `300ms`, `-1.5h` or `2h45m`. Valid time units are `ns`, `us` (or `µs`), `ms`, `s`, `m`, `h`.
@y
A duration string is a possibly signed sequence of decimal numbers, each with optional fraction and a unit suffix, such as `300ms`, `-1.5h` or `2h45m`. Valid time units are `ns`, `us` (or `µs`), `ms`, `s`, `m`, `h`.
@z

@x
This template:
@y
This template:
@z

@x
```go-html-template
{{ $duration := time.ParseDuration "24h" }}
{{ printf "There are %.0f seconds in one day." $duration.Seconds }}
```
@y
```go-html-template
{{ $duration := time.ParseDuration "24h" }}
{{ printf "There are %.0f seconds in one day." $duration.Seconds }}
```
@z

@x
Is rendered to:
@y
Is rendered to:
@z

@x
```text
There are 86400 seconds in one day.
```
@y
```text
There are 86400 seconds in one day.
```
@z

@x
[`time.Duration`]: https://pkg.go.dev/time#Duration
[methods]: /methods/duration/
@y
[`time.Duration`]: https://pkg.go.dev/time#Duration
[methods]: /methods/duration/
@z
