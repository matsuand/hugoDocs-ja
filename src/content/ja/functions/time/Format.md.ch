%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: time.Format
description: Returns the given date/time as a formatted and localized string.
categories: []
keywords: []
action:
  aliases: [dateFormat]
  related:
    - functions/time/AsTime
    - functions/time/Duration
    - functions/time/Now
    - functions/time/ParseDuration
  returnType: string
  signatures: [time.Format LAYOUT INPUT]
aliases: [/functions/dateformat]
toc: true
---
@y
---
title: time.Format
description: Returns the given date/time as a formatted and localized string.
categories: []
keywords: []
action:
  aliases: [dateFormat]
  related:
    - functions/time/AsTime
    - functions/time/Duration
    - functions/time/Now
    - functions/time/ParseDuration
  returnType: string
  signatures: [time.Format LAYOUT INPUT]
aliases: [/functions/dateformat]
toc: true
---
@z

@x
Use the `time.Format` function with `time.Time` values:
@y
Use the `time.Format` function with `time.Time` values:
@z

@x
```go-html-template
{{ $t := time.AsTime "2023-02-27T23:44:58-08:00" }}
{{ time.Format "2 Jan 2006" $t }} → 27 Feb 2023
```
@y
```go-html-template
{{ $t := time.AsTime "2023-02-27T23:44:58-08:00" }}
{{ time.Format "2 Jan 2006" $t }} → 27 Feb 2023
```
@z

@x
Or use `time.Format` with a *parsable* string representation of a date/time value:
@y
Or use `time.Format` with a *parsable* string representation of a date/time value:
@z

@x
```go-html-template
{{ $t := "27 Feb 2023" }}
{{ time.Format "January 2, 2006" $t }} → February 27, 2023
```
@y
```go-html-template
{{ $t := "27 Feb 2023" }}
{{ time.Format "January 2, 2006" $t }} → February 27, 2023
```
@z

@x
Examples of parsable string representations:
@y
Examples of parsable string representations:
@z

@x
{{% include "functions/time/_common/parsable-date-time-strings.md" %}}
@y
{{% include "functions/time/_common/parsable-date-time-strings.md" %}}
@z

@x
## Layout string
@y
## Layout string
@z

@x
{{% include "functions/_common/time-layout-string.md" %}}
@y
{{% include "functions/_common/time-layout-string.md" %}}
@z

@x
## Localization
@y
## Localization
@z

@x
Use the `time.Format` function to localize `time.Time` values for the current language and region.
@y
Use the `time.Format` function to localize `time.Time` values for the current language and region.
@z

@x
{{% include "functions/_common/locales.md" %}}
@y
{{% include "functions/_common/locales.md" %}}
@z

@x
Use the layout string as described above, or one of the tokens below. For example:
@y
Use the layout string as described above, or one of the tokens below. For example:
@z

@x
```go-html-template
{{ .Date | time.Format ":date_medium" }} → Jan 27, 2023
```
@y
```go-html-template
{{ .Date | time.Format ":date_medium" }} → Jan 27, 2023
```
@z

@x
Localized to en-US:
@y
Localized to en-US:
@z

@x
Token|Result
:--|:--
`:date_full`|`Friday, January 27, 2023`
`:date_long`|`January 27, 2023`
`:date_medium`|`Jan 27, 2023`
`:date_short`|`1/27/23`
`:time_full`|`11:44:58 pm Pacific Standard Time`
`:time_long`|`11:44:58 pm PST`
`:time_medium`|`11:44:58 pm`
`:time_short`|`11:44 pm`
@y
Token|Result
:--|:--
`:date_full`|`Friday, January 27, 2023`
`:date_long`|`January 27, 2023`
`:date_medium`|`Jan 27, 2023`
`:date_short`|`1/27/23`
`:time_full`|`11:44:58 pm Pacific Standard Time`
`:time_long`|`11:44:58 pm PST`
`:time_medium`|`11:44:58 pm`
`:time_short`|`11:44 pm`
@z

@x
Localized to de-DE:
@y
Localized to de-DE:
@z

@x
Token|Result
:--|:--
`:date_full`|`Freitag, 27. Januar 2023`
`:date_long`|`27. Januar 2023`
`:date_medium`|`27.01.2023`
`:date_short`|`27.01.23`
`:time_full`|`23:44:58 Nordamerikanische Westküsten-Normalzeit`
`:time_long`|`23:44:58 PST`
`:time_medium`|`23:44:58`
`:time_short`|`23:44`
@y
Token|Result
:--|:--
`:date_full`|`Freitag, 27. Januar 2023`
`:date_long`|`27. Januar 2023`
`:date_medium`|`27.01.2023`
`:date_short`|`27.01.23`
`:time_full`|`23:44:58 Nordamerikanische Westküsten-Normalzeit`
`:time_long`|`23:44:58 PST`
`:time_medium`|`23:44:58`
`:time_short`|`23:44`
@z
