%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: Format
description: Returns a textual representation of the time.Time value formatted according to the layout string.
categories: []
keywords: []
action:
  aliases: []
  related:
    - functions/time/AsTime
    - methods/time/UTC
    - methods/time/Local
  returnType: string
  signatures: [TIME.Format LAYOUT]
toc: true
aliases: [/methods/time/format]
---
@y
---
title: Format
description: Returns a textual representation of the time.Time value formatted according to the layout string.
categories: []
keywords: []
action:
  aliases: []
  related:
    - functions/time/AsTime
    - methods/time/UTC
    - methods/time/Local
  returnType: string
  signatures: [TIME.Format LAYOUT]
toc: true
aliases: [/methods/time/format]
---
@z

@x
```go-template
{{ $t := "2023-01-27T23:44:58-08:00" }}
{{ $t = time.AsTime $t }}
{{ $format := "2 Jan 2006" }}
@y
```go-template
{{ $t := "2023-01-27T23:44:58-08:00" }}
{{ $t = time.AsTime $t }}
{{ $format := "2 Jan 2006" }}
@z

@x
{{ $t.Format $format }} → 27 Jan 2023
```
@y
{{ $t.Format $format }} → 27 Jan 2023
```
@z

@x
{{% note %}}
To [localize] the return value, use the [`time.Format`] function instead.
@y
{{% note %}}
To [localize] the return value, use the [`time.Format`] function instead.
@z

@x
[localize]: /getting-started/glossary/#localization
[`time.Format`]: /functions/time/format/
{{% /note %}}
@y
[localize]: /getting-started/glossary/#localization
[`time.Format`]: /functions/time/format/
{{% /note %}}
@z

@x
Use the `Format` method with any `time.Time` value, including the four predefined front matter dates:
@y
Use the `Format` method with any `time.Time` value, including the four predefined front matter dates:
@z

@x
```go-html-template
{{ $format := "2 Jan 2006" }}
@y
```go-html-template
{{ $format := "2 Jan 2006" }}
@z

@x
{{ .Date.Format $format }}
{{ .PublishDate.Format $format }}
{{ .ExpiryDate.Format $format }}
{{ .Lastmod.Format $format }}
```
@y
{{ .Date.Format $format }}
{{ .PublishDate.Format $format }}
{{ .ExpiryDate.Format $format }}
{{ .Lastmod.Format $format }}
```
@z

@x
{{% note %}}
Use the [`time.Format`] function to format string representations of dates, and to format raw TOML dates that exclude time and time zone offset.
@y
{{% note %}}
Use the [`time.Format`] function to format string representations of dates, and to format raw TOML dates that exclude time and time zone offset.
@z

@x
[`time.Format`]: /functions/time/format/
{{% /note %}}
@y
[`time.Format`]: /functions/time/format/
{{% /note %}}
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
## Examples
@y
## Examples
@z

@x
Given this front matter:
@y
Given this front matter:
@z

@x
{{< code-toggle fm=true >}}
title = "About time"
date = 2023-01-27T23:44:58-08:00
{{< /code-toggle >}}
@y
{{< code-toggle fm=true >}}
title = "About time"
date = 2023-01-27T23:44:58-08:00
{{< /code-toggle >}}
@z

@x
The examples below were rendered in the `America/Los_Angeles` time zone:
@y
The examples below were rendered in the `America/Los_Angeles` time zone:
@z

@x
Format string|Result
:--|:--
`Monday, January 2, 2006`|`Friday, January 27, 2023`
`Mon Jan 2 2006`|`Fri Jan 27 2023`
`January 2006`|`January 2023`
`2006-01-02`|`2023-01-27`
`Monday`|`Friday`
`02 Jan 06 15:04 MST`|`27 Jan 23 23:44 PST`
`Mon, 02 Jan 2006 15:04:05 MST`|`Fri, 27 Jan 2023 23:44:58 PST`
`Mon, 02 Jan 2006 15:04:05 -0700`|`Fri, 27 Jan 2023 23:44:58 -0800`
@y
Format string|Result
:--|:--
`Monday, January 2, 2006`|`Friday, January 27, 2023`
`Mon Jan 2 2006`|`Fri Jan 27 2023`
`January 2006`|`January 2023`
`2006-01-02`|`2023-01-27`
`Monday`|`Friday`
`02 Jan 06 15:04 MST`|`27 Jan 23 23:44 PST`
`Mon, 02 Jan 2006 15:04:05 MST`|`Fri, 27 Jan 2023 23:44:58 PST`
`Mon, 02 Jan 2006 15:04:05 -0700`|`Fri, 27 Jan 2023 23:44:58 -0800`
@z

@x
## UTC and local time
@y
## UTC and local time
@z

@x
Convert and format any `time.Time` value to either Coordinated Universal Time (UTC) or local time.
@y
Convert and format any `time.Time` value to either Coordinated Universal Time (UTC) or local time.
@z

@x
```go-html-template
{{ $t := "2023-01-27T23:44:58-08:00" }}
{{ $t = time.AsTime $t }}
{{ $format := "2 Jan 2006 3:04:05 PM MST" }}
@y
```go-html-template
{{ $t := "2023-01-27T23:44:58-08:00" }}
{{ $t = time.AsTime $t }}
{{ $format := "2 Jan 2006 3:04:05 PM MST" }}
@z

@x
{{ $t.UTC.Format $format }} → 28 Jan 2023 7:44:58 AM UTC
{{ $t.Local.Format $format }} → 27 Jan 2023 11:44:58 PM PST
```
@y
{{ $t.UTC.Format $format }} → 28 Jan 2023 7:44:58 AM UTC
{{ $t.Local.Format $format }} → 27 Jan 2023 11:44:58 PM PST
```
@z

@x
## Ordinal representation
@y
## Ordinal representation
@z

@x
Use the [`humanize`](/functions/inflect/humanize) function to render the day of the month as an ordinal number:
@y
Use the [`humanize`](/functions/inflect/humanize) function to render the day of the month as an ordinal number:
@z

@x
```go-html-template
{{ $t := "2023-01-27T23:44:58-08:00" }}
{{ $t = time.AsTime $t }}
@y
```go-html-template
{{ $t := "2023-01-27T23:44:58-08:00" }}
{{ $t = time.AsTime $t }}
@z

@x
{{ humanize $t.Day }} of {{ $t.Format "January 2006" }} → 27th of January 2023
```
@y
{{ humanize $t.Day }} of {{ $t.Format "January 2006" }} → 27th of January 2023
```
@z
