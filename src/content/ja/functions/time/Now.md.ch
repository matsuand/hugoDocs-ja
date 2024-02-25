%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: time.Now
description: Returns the current local time.
categories: []
keywords: []
action:
  aliases: [now]
  related:
    - functions/time/AsTime
    - functions/time/Duration
    - functions/time/Format
    - functions/time/ParseDuration
  returnType: time.Time
  signatures: [time.Now]
aliases: [/functions/now]
---
@y
---
title: time.Now
description: Returns the current local time.
categories: []
keywords: []
action:
  aliases: [now]
  related:
    - functions/time/AsTime
    - functions/time/Duration
    - functions/time/Format
    - functions/time/ParseDuration
  returnType: time.Time
  signatures: [time.Now]
aliases: [/functions/now]
---
@z

@x
For example, when building a site on October 15, 2023 in the America/Los_Angeles time zone:
@y
For example, when building a site on October 15, 2023 in the America/Los_Angeles time zone:
@z

@x
```go-html-template
{{ time.Now }}
```
@y
```go-html-template
{{ time.Now }}
```
@z

@x
This produces a `time.Time` value, with a string representation such as:
@y
This produces a `time.Time` value, with a string representation such as:
@z

@x
```text
2023-10-15 12:59:28.337140706 -0700 PDT m=+0.041752605
```
@y
```text
2023-10-15 12:59:28.337140706 -0700 PDT m=+0.041752605
```
@z

@x
To format and [localize] the value, pass it through the [`time.Format`] function:
@y
To format and [localize] the value, pass it through the [`time.Format`] function:
@z

@x
```go-html-template
{{ time.Now | time.Format "Jan 2006" }} → Oct 2023
```
@y
```go-html-template
{{ time.Now | time.Format "Jan 2006" }} → Oct 2023
```
@z

@x
The `time.Now` function returns a `time.Time` value, so you can chain any of the [time methods] to the resulting value. For example:
@y
The `time.Now` function returns a `time.Time` value, so you can chain any of the [time methods] to the resulting value. For example:
@z

@x
```go-html-template
{{ time.Now.Year }} → 2023 (int)
{{ time.Now.Weekday.String }} → Sunday
{{ time.Now.Month.String }} → October
{{ time.Now.Unix }} → 1697400955 (int64)
```
@y
```go-html-template
{{ time.Now.Year }} → 2023 (int)
{{ time.Now.Weekday.String }} → Sunday
{{ time.Now.Month.String }} → October
{{ time.Now.Unix }} → 1697400955 (int64)
```
@z

@x
[`time.Format`]: /functions/time/format/
[localize]: /getting-started/glossary/#localization
[time methods]: /methods/time/
@y
[`time.Format`]: /functions/time/format/
[localize]: /getting-started/glossary/#localization
[time methods]: /methods/time/
@z
