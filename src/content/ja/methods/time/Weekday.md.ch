%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: Weekday
description:  Returns the day of the week of the given time.Time value.
categories: []
keywords: []
action:
  related:
    - functions/time/AsTime
  returnType: time.Weekday
  signatures: [TIME.Weekday]
---
@y
---
title: Weekday
description:  Returns the day of the week of the given time.Time value.
categories: []
keywords: []
action:
  related:
    - functions/time/AsTime
  returnType: time.Weekday
  signatures: [TIME.Weekday]
---
@z

@x
To convert the `time.Weekday` value to a string:
@y
To convert the `time.Weekday` value to a string:
@z

@x
```go-html-template
{{ $t := time.AsTime "2023-01-27T23:44:58-08:00" }}
{{ $t.Weekday.String }} → Friday
```
@y
```go-html-template
{{ $t := time.AsTime "2023-01-27T23:44:58-08:00" }}
{{ $t.Weekday.String }} → Friday
```
@z

@x
To convert the `time.Weekday` value to an integer.
@y
To convert the `time.Weekday` value to an integer.
@z

@x
```go-html-template
{{ $t := time.AsTime "2023-01-27T23:44:58-08:00" }}
{{ $t.Weekday | int }} → 5
@y
```go-html-template
{{ $t := time.AsTime "2023-01-27T23:44:58-08:00" }}
{{ $t.Weekday | int }} → 5
@z
