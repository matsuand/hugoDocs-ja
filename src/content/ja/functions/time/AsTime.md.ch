%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: time.AsTime
description: Returns the given string representation of a date/time value as a time.Time value.
categories: []
keywords: []
action:
  aliases: [time]
  related:
    - functions/time/Duration
    - functions/time/Format
    - functions/time/Now
    - functions/time/ParseDuration
  returnType: time.Time
  signatures: ['time.AsTime INPUT [TIMEZONE]']
aliases: [/functions/time]
toc: true
---
@y
---
title: time.AsTime
description: Returns the given string representation of a date/time value as a time.Time value.
categories: []
keywords: []
action:
  aliases: [time]
  related:
    - functions/time/Duration
    - functions/time/Format
    - functions/time/Now
    - functions/time/ParseDuration
  returnType: time.Time
  signatures: ['time.AsTime INPUT [TIMEZONE]']
aliases: [/functions/time]
toc: true
---
@z

@x
## Overview
@y
## Overview
@z

@x
Hugo provides [functions] and [methods] to format, localize, parse, compare, and manipulate date/time values. Before you can do any of these with string representations of date/time values, you must first convert them to [`time.Time`] values using the `time.AsTime` function.
@y
Hugo provides [functions] and [methods] to format, localize, parse, compare, and manipulate date/time values. Before you can do any of these with string representations of date/time values, you must first convert them to [`time.Time`] values using the `time.AsTime` function.
@z

@x
```go-html-template
{{ $t := "2023-10-15T14:20:28-07:00" }}
{{ time.AsTime $t }} → 2023-10-15 14:20:28 -0700 PDT (time.Time)
```
@y
```go-html-template
{{ $t := "2023-10-15T14:20:28-07:00" }}
{{ time.AsTime $t }} → 2023-10-15 14:20:28 -0700 PDT (time.Time)
```
@z

@x
## Parsable strings
@y
## Parsable strings
@z

@x
As shown above, the first argument must be a *parsable* string representation of a date/time value. For example:
@y
As shown above, the first argument must be a *parsable* string representation of a date/time value. For example:
@z

@x
{{% include "functions/time/_common/parsable-date-time-strings.md" %}}
@y
{{% include "functions/time/_common/parsable-date-time-strings.md" %}}
@z

@x
## Time zones
@y
## Time zones
@z

@x
When the parsable string does not contain a time zone offset, you can do either of the following to assign a time zone other than Etc/UTC:
@y
When the parsable string does not contain a time zone offset, you can do either of the following to assign a time zone other than Etc/UTC:
@z

@x
- Provide a second argument to the `time.AsTime` function
@y
- Provide a second argument to the `time.AsTime` function
@z

@x
  ```go-html-template
  {{ time.AsTime "15 Oct 2023" "America/Chicago" }}
  ```
@y
  ```go-html-template
  {{ time.AsTime "15 Oct 2023" "America/Chicago" }}
  ```
@z

@x
- Set the default time zone in your site configuration
@y
- Set the default time zone in your site configuration
@z

@x
  {{< code-toggle file=hugo >}}
  timeZone = 'America/New_York'
  {{< /code-toggle >}}
@y
  {{< code-toggle file=hugo >}}
  timeZone = 'America/New_York'
  {{< /code-toggle >}}
@z

@x
The order of precedence for determining the time zone is:
@y
The order of precedence for determining the time zone is:
@z

@x
1. The time zone offset in the date/time string
2. The time zone provide as the second argument to the `time.AsTime` function
3. The time zone specified in your site configuration
@y
1. The time zone offset in the date/time string
2. The time zone provide as the second argument to the `time.AsTime` function
3. The time zone specified in your site configuration
@z

@x
The list of valid time zones may be system dependent, but should include `UTC`, `Local`, or any location in the [IANA Time Zone database].
@y
The list of valid time zones may be system dependent, but should include `UTC`, `Local`, or any location in the [IANA Time Zone database].
@z

@x
[`time.Time`]: https://pkg.go.dev/time#Time
[functions]: /functions/time/
[iana time zone database]: https://en.wikipedia.org/wiki/List_of_tz_database_time_zones
[methods]: /methods/time/
@y
[`time.Time`]: https://pkg.go.dev/time#Time
[functions]: /functions/time/
[iana time zone database]: https://en.wikipedia.org/wiki/List_of_tz_database_time_zones
[methods]: /methods/time/
@z
