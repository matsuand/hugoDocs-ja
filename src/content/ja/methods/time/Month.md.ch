%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: Month
description: Returns the month of the year of the given time.Time value.
categories: []
keywords: []
action:
  related:
    - methods/time/Year
    - methods/time/Day
    - methods/time/Hour
    - methods/time/Minute
    - methods/time/Second
    - functions/time/AsTime
  returnType: time.Month
  signatures: [TIME.Month]
---
@y
---
title: Month
description: Returns the month of the year of the given time.Time value.
categories: []
keywords: []
action:
  related:
    - methods/time/Year
    - methods/time/Day
    - methods/time/Hour
    - methods/time/Minute
    - methods/time/Second
    - functions/time/AsTime
  returnType: time.Month
  signatures: [TIME.Month]
---
@z

@x
To convert the `time.Month` value to a string:
@y
To convert the `time.Month` value to a string:
@z

@x
```go-html-template
{{ $t := time.AsTime "2023-01-27T23:44:58-08:00" }}
{{ $t.Month.String }} → January
```
@y
```go-html-template
{{ $t := time.AsTime "2023-01-27T23:44:58-08:00" }}
{{ $t.Month.String }} → January
```
@z

@x
To convert the `time.Month` value to an integer.
@y
To convert the `time.Month` value to an integer.
@z

@x
```go-html-template
{{ $t := time.AsTime "2023-01-27T23:44:58-08:00" }}
{{ $t.Month | int }} → 1
```
@y
```go-html-template
{{ $t := time.AsTime "2023-01-27T23:44:58-08:00" }}
{{ $t.Month | int }} → 1
```
@z
