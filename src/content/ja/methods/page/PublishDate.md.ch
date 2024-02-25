%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: PublishDate
description: Returns the publish date of the given page.
categories: []
keywords: []
action:
  related:
    - methods/page/Date
    - methods/page/ExpiryDate
    - methods/page/LastMod
  returnType: time.Time
  signatures: [PAGE.PublishDate]
---
@y
---
title: PublishDate
description: Returns the publish date of the given page.
categories: []
keywords: []
action:
  related:
    - methods/page/Date
    - methods/page/ExpiryDate
    - methods/page/LastMod
  returnType: time.Time
  signatures: [PAGE.PublishDate]
---
@z

@x
By default, Hugo excludes pages with future publish dates when building your site. To include future pages, use the `--buildFuture` command line flag.
@y
By default, Hugo excludes pages with future publish dates when building your site. To include future pages, use the `--buildFuture` command line flag.
@z

@x
Set the publish date in front matter:
@y
Set the publish date in front matter:
@z

@x
{{< code-toggle file=content/news/article-1.md fm=true >}}
title = 'Article 1'
publishDate = 2023-10-19T00:40:04-07:00
{{< /code-toggle >}}
@y
{{< code-toggle file=content/news/article-1.md fm=true >}}
title = 'Article 1'
publishDate = 2023-10-19T00:40:04-07:00
{{< /code-toggle >}}
@z

@x
The publish date is a [time.Time] value. Format and localize the value with the [`time.Format`] function, or use it with any of the [time methods].
@y
The publish date is a [time.Time] value. Format and localize the value with the [`time.Format`] function, or use it with any of the [time methods].
@z

@x
```go-html-template
{{ .PublishDate | time.Format ":date_medium" }} → Oct 19, 2023
```
@y
```go-html-template
{{ .PublishDate | time.Format ":date_medium" }} → Oct 19, 2023
```
@z

@x
In the example above we explicitly set the publish date in front matter. With Hugo's default configuration, the `PublishDate` method returns the front matter value. This behavior is configurable, allowing you to set fallback values if the publish date is not defined in front matter. See&nbsp;[details].
@y
In the example above we explicitly set the publish date in front matter. With Hugo's default configuration, the `PublishDate` method returns the front matter value. This behavior is configurable, allowing you to set fallback values if the publish date is not defined in front matter. See&nbsp;[details].
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
