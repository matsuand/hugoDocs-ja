%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: Date
description: Returns the date of the given page.
categories: []
keywords: []
action:
  related:
    - methods/page/ExpiryDate
    - methods/page/LastMod
    - methods/page/PublishDate
  returnType: time.Time
  signatures: [PAGE.Date]
---
@y
---
title: Date
description: Returns the date of the given page.
categories: []
keywords: []
action:
  related:
    - methods/page/ExpiryDate
    - methods/page/LastMod
    - methods/page/PublishDate
  returnType: time.Time
  signatures: [PAGE.Date]
---
@z

@x
Set the date in front matter:
@y
Set the date in front matter:
@z

@x
{{< code-toggle file=content/news/article-1.md fm=true >}}
title = 'Article 1'
date = 2023-10-19T00:40:04-07:00
{{< /code-toggle >}}
@y
{{< code-toggle file=content/news/article-1.md fm=true >}}
title = 'Article 1'
date = 2023-10-19T00:40:04-07:00
{{< /code-toggle >}}
@z

@x
{{% note %}}
The date field in front matter is often considered to be the creation date, You can change its meaning, and its effect on your site, in the site configuration. See&nbsp;[details].
@y
{{% note %}}
The date field in front matter is often considered to be the creation date, You can change its meaning, and its effect on your site, in the site configuration. See&nbsp;[details].
@z

@x
[details]: /getting-started/configuration/#configure-dates
{{% /note %}}
@y
[details]: /getting-started/configuration/#configure-dates
{{% /note %}}
@z

@x
The date is a [time.Time] value. Format and localize the value with the [`time.Format`] function, or use it with any of the [time methods].
@y
The date is a [time.Time] value. Format and localize the value with the [`time.Format`] function, or use it with any of the [time methods].
@z

@x
```go-html-template
{{ .Date | time.Format ":date_medium" }} → Oct 19, 2023
```
@y
```go-html-template
{{ .Date | time.Format ":date_medium" }} → Oct 19, 2023
```
@z

@x
In the example above we explicitly set the date in front matter. With Hugo's default configuration, the `Date` method returns the front matter value. This behavior is configurable, allowing you to set fallback values if the date is not defined in front matter. See&nbsp;[details].
@y
In the example above we explicitly set the date in front matter. With Hugo's default configuration, the `Date` method returns the front matter value. This behavior is configurable, allowing you to set fallback values if the date is not defined in front matter. See&nbsp;[details].
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
