%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: Data inspection
linkTitle: Inspection
description: Use template functions to inspect values and data structures.
categories: [troubleshooting]
keywords: []
menu:
  docs:
    parent: troubleshooting
    weight: 40
weight: 40
---
@y
---
title: Data inspection
linkTitle: Inspection
description: Use template functions to inspect values and data structures.
categories: [troubleshooting]
keywords: []
menu:
  docs:
    parent: troubleshooting
    weight: 40
weight: 40
---
@z

@x
Use the [`debug.Dump`] function to inspect a data structure:
@y
Use the [`debug.Dump`] function to inspect a data structure:
@z

@x
```go-html-template
<pre>{{ debug.Dump .Params }}</pre>
```
@y
```go-html-template
<pre>{{ debug.Dump .Params }}</pre>
```
@z

@x
```text
{
  "date": "2023-11-10T15:10:42-08:00",
  "draft": false,
  "iscjklanguage": false,
  "lastmod": "2023-11-10T15:10:42-08:00",
  "publishdate": "2023-11-10T15:10:42-08:00",
  "tags": [
    "foo",
    "bar"
  ],
  "title": "My first post"
}
```
@y
```text
{
  "date": "2023-11-10T15:10:42-08:00",
  "draft": false,
  "iscjklanguage": false,
  "lastmod": "2023-11-10T15:10:42-08:00",
  "publishdate": "2023-11-10T15:10:42-08:00",
  "tags": [
    "foo",
    "bar"
  ],
  "title": "My first post"
}
```
@z

@x
Use the [`printf`] function (render) or [`warnf`] function (log to console) to inspect simple data structures. The layout string below displays both value and data type.
@y
Use the [`printf`] function (render) or [`warnf`] function (log to console) to inspect simple data structures. The layout string below displays both value and data type.
@z

@x
```go-html-template
{{ $value := 42 }}
{{ printf "%[1]v (%[1]T)" $value }} → 42 (int)
```
@y
```go-html-template
{{ $value := 42 }}
{{ printf "%[1]v (%[1]T)" $value }} → 42 (int)
```
@z

@x
[`debug.Dump`]: /functions/debug/dump/
[`printf`]: /functions/fmt/printf/
[`warnf`]: /functions/fmt/warnf/
@y
[`debug.Dump`]: /functions/debug/dump/
[`printf`]: /functions/fmt/printf/
[`warnf`]: /functions/fmt/warnf/
@z
