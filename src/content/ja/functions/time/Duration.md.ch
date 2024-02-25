%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: time.Duration
description: Returns a time.Duration value using the given time unit and  number.
categories: []
keywords: []
action:
  aliases: [duration]
  related:
    - functions/time/AsTime
    - functions/time/Format
    - functions/time/Now
    - functions/time/ParseDuration
  returnType: time.Duration
  signatures: [time.Duration TIME_UNIT NUMBER]
aliases: [/functions/duration]
---
@y
---
title: time.Duration
description: Returns a time.Duration value using the given time unit and  number.
categories: []
keywords: []
action:
  aliases: [duration]
  related:
    - functions/time/AsTime
    - functions/time/Format
    - functions/time/Now
    - functions/time/ParseDuration
  returnType: time.Duration
  signatures: [time.Duration TIME_UNIT NUMBER]
aliases: [/functions/duration]
---
@z

@x
The `time.Duration` function returns a [`time.Duration`] value that you can use with any of the `Duration` [methods].
@y
The `time.Duration` function returns a [`time.Duration`] value that you can use with any of the `Duration` [methods].
@z

@x
This template:
@y
This template:
@z

@x
```go-html-template
{{ $duration := time.Duration "hour" 24 }}
{{ printf "There are %.0f seconds in one day." $duration.Seconds }}
```
@y
```go-html-template
{{ $duration := time.Duration "hour" 24 }}
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
The time unit must be one of the following:
@y
The time unit must be one of the following:
@z

@x
Duration|Valid time units
:--|:--
hours|`hour`, `h`
minutes|`minute`, `m`
seconds|`second`, `s`
milliseconds|`millisecond`, `ms`
microseconds|`microsecond`, `us`, `µs`
nanoseconds|`nanosecond`, `ns`
@y
Duration|Valid time units
:--|:--
hours|`hour`, `h`
minutes|`minute`, `m`
seconds|`second`, `s`
milliseconds|`millisecond`, `ms`
microseconds|`microsecond`, `us`, `µs`
nanoseconds|`nanosecond`, `ns`
@z

@x
[`time.Duration`]: https://pkg.go.dev/time#Duration
[methods]: /methods/duration/
@y
[`time.Duration`]: https://pkg.go.dev/time#Duration
[methods]: /methods/duration/
@z
