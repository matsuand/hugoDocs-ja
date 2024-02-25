%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: YearDay
description: Returns the day of the year of the given time.Time value, in the range [1, 365] for non-leap years, and [1,366] in leap years.
categories: []
keywords: []
action:
  related: []
  returnType: int
  signatures: [TIME.YearDay]
---
@y
---
title: YearDay
description: Returns the day of the year of the given time.Time value, in the range [1, 365] for non-leap years, and [1,366] in leap years.
categories: []
keywords: []
action:
  related: []
  returnType: int
  signatures: [TIME.YearDay]
---
@z

@x
```go-html-template
{{ $t := time.AsTime "2023-01-27T23:44:58-08:00" }}
{{ $t.YearDay }} → 27
```
@y
```go-html-template
{{ $t := time.AsTime "2023-01-27T23:44:58-08:00" }}
{{ $t.YearDay }} → 27
```
@z
