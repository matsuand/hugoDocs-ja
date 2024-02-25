%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: ExpiryDate
description: Returns the expiry date of the given page. 
categories: []
keywords: []
action:
  related:
    - methods/page/Date
    - methods/page/LastMod
    - methods/page/PublishDate
  returnType: time.Time
  signatures: [PAGE.ExpiryDate]
---
@y
---
title: ExpiryDate
description: Returns the expiry date of the given page. 
categories: []
keywords: []
action:
  related:
    - methods/page/Date
    - methods/page/LastMod
    - methods/page/PublishDate
  returnType: time.Time
  signatures: [PAGE.ExpiryDate]
---
@z

@x
By default, Hugo excludes expired pages when building your site. To include expired pages, use the `--buildExpired` command line flag.
@y
By default, Hugo excludes expired pages when building your site. To include expired pages, use the `--buildExpired` command line flag.
@z

@x
Set the expiry date in front matter:
@y
Set the expiry date in front matter:
@z

@x
{{< code-toggle file=content/news/article-1.md fm=true >}}
title = 'Article 1'
expiryDate = 2024-10-19T00:32:13-07:00
{{< /code-toggle >}}
@y
{{< code-toggle file=content/news/article-1.md fm=true >}}
title = 'Article 1'
expiryDate = 2024-10-19T00:32:13-07:00
{{< /code-toggle >}}
@z

@x
The expiry date is a [time.Time] value. Format and localize the value with the [`time.Format`] function, or use it with any of the [time methods].
@y
The expiry date is a [time.Time] value. Format and localize the value with the [`time.Format`] function, or use it with any of the [time methods].
@z

@x
```go-html-template
{{ .ExpiryDate | time.Format ":date_medium" }} → Oct 19, 2024
```
@y
```go-html-template
{{ .ExpiryDate | time.Format ":date_medium" }} → Oct 19, 2024
```
@z

@x
In the example above we explicitly set the expiry date in front matter. With Hugo's default configuration, the `ExpiryDate` method returns the front matter value. This behavior is configurable, allowing you to set fallback values if the expiry date is not defined in front matter. See&nbsp;[details].
@y
In the example above we explicitly set the expiry date in front matter. With Hugo's default configuration, the `ExpiryDate` method returns the front matter value. This behavior is configurable, allowing you to set fallback values if the expiry date is not defined in front matter. See&nbsp;[details].
@z

@x
[`time.Format`]: /functions/time/format/
[details]: /getting-started/configuration/#configure-dates
[time methods]: /methods/time/
[time.Time]: https://pkg.go.dev/time#Time
@y
[`time.Format`]: /functions/time/format/
[details]: /getting-started/configuration/#configure-dates
[time methods]: /methods/time/
[time.Time]: https://pkg.go.dev/time#Time
@z
