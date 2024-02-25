%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: Lastmod
description: Returns the last modification date of site content.
categories: []
keywords: []
action:
  related: []
  returnType: time.Time
  signatures: [SITE.Lastmod]
---
@y
---
title: Lastmod
description: Returns the last modification date of site content.
categories: []
keywords: []
action:
  related: []
  returnType: time.Time
  signatures: [SITE.Lastmod]
---
@z

@x
{{< new-in 0.123.0 >}}
@y
{{< new-in 0.123.0 >}}
@z

@x
The `Lastmod` method on a `Site` object returns a [`time.Time`] value. Use this with time [functions] and [methods]. For example:
@y
The `Lastmod` method on a `Site` object returns a [`time.Time`] value. Use this with time [functions] and [methods]. For example:
@z

@x
```go-html-template
{{ .Site.Lastmod | time.Format ":date_long" }} → January 31, 2024
@y
```go-html-template
{{ .Site.Lastmod | time.Format ":date_long" }} → January 31, 2024
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
