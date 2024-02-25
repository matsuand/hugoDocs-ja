%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: LastChange
description: Returns the last modification date of site content.
categories: []
keywords: []
action:
  related: []
  returnType: time.Time
  signatures: [SITE.LastChange]
---
@y
---
title: LastChange
description: Returns the last modification date of site content.
categories: []
keywords: []
action:
  related: []
  returnType: time.Time
  signatures: [SITE.LastChange]
---
@z

@x
{{% deprecated-in 0.123.0 %}}
Use [`.Site.Lastmod`] instead.
@y
{{% deprecated-in 0.123.0 %}}
Use [`.Site.Lastmod`] instead.
@z

@x
[`.Site.Lastmod`]: /methods/site/lastmod/
{{% /deprecated-in %}}
@y
[`.Site.Lastmod`]: /methods/site/lastmod/
{{% /deprecated-in %}}
@z

@x
The `LastChange` method on a `Site` object returns a [`time.Time`] value. Use this with time [functions] and [methods]. For example:
@y
The `LastChange` method on a `Site` object returns a [`time.Time`] value. Use this with time [functions] and [methods]. For example:
@z

@x
```go-html-template
{{ .Site.LastChange | time.Format ":date_long" }} → January 31, 2024
@y
```go-html-template
{{ .Site.LastChange | time.Format ":date_long" }} → January 31, 2024
@z

@x
```
@y
```
@z

@x
[`time.Time`]: https://pkg.go.dev/time#Time
[functions]: /functions/time/
[methods]: /methods/time/
@y
[`time.Time`]: https://pkg.go.dev/time#Time
[functions]: /functions/time/
[methods]: /methods/time/
@z
