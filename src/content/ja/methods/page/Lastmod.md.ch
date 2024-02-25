%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: Lastmod
description: Returns the last modification date of the given page. 
categories: []
keywords: []
action:
  related:
    - methods/page/Date
    - methods/page/ExpiryDate
    - methods/page/PublishDate
    - methods/page/GitInfo
  returnType: time.Time
  signatures: [PAGE.Lastmod]
---
@y
---
title: Lastmod
description: Returns the last modification date of the given page. 
categories: []
keywords: []
action:
  related:
    - methods/page/Date
    - methods/page/ExpiryDate
    - methods/page/PublishDate
    - methods/page/GitInfo
  returnType: time.Time
  signatures: [PAGE.Lastmod]
---
@z

@x
Set the last modification date in front matter:
@y
Set the last modification date in front matter:
@z

@x
{{< code-toggle file=content/news/article-1.md fm=true >}}
title = 'Article 1'
lastmod = 2023-10-19T00:40:04-07:00
{{< /code-toggle >}}
@y
{{< code-toggle file=content/news/article-1.md fm=true >}}
title = 'Article 1'
lastmod = 2023-10-19T00:40:04-07:00
{{< /code-toggle >}}
@z

@x
The last modification date is a [time.Time] value. Format and localize the value with the [`time.Format`] function, or use it with any of the [time methods].
@y
The last modification date is a [time.Time] value. Format and localize the value with the [`time.Format`] function, or use it with any of the [time methods].
@z

@x
```go-html-template
{{ .Lastmod | time.Format ":date_medium" }} → Oct 19, 2023
```
@y
```go-html-template
{{ .Lastmod | time.Format ":date_medium" }} → Oct 19, 2023
```
@z

@x
In the example above we explicitly set the last modification date in front matter. With Hugo's default configuration, the `Lastmod` method returns the front matter value. This behavior is configurable, allowing you to:
@y
In the example above we explicitly set the last modification date in front matter. With Hugo's default configuration, the `Lastmod` method returns the front matter value. This behavior is configurable, allowing you to:
@z

@x
- Set the last modification date to the Author Date of the last Git commit for that file. See [`GitInfo`] for details.
- Set fallback values if the last modification date is not defined in front matter.
@y
- Set the last modification date to the Author Date of the last Git commit for that file. See [`GitInfo`] for details.
- Set fallback values if the last modification date is not defined in front matter.
@z

@x
Learn more about [date configuration].
@y
Learn more about [date configuration].
@z

@x
[`gitinfo`]: /methods/page/gitinfo/
[`time.format`]: /functions/time/format/
[date configuration]: /getting-started/configuration/#configure-dates
[time methods]: /methods/time/
[time.time]: https://pkg.go.dev/time#time
@y
[`gitinfo`]: /methods/page/gitinfo/
[`time.format`]: /functions/time/format/
[date configuration]: /getting-started/configuration/#configure-dates
[time methods]: /methods/time/
[time.time]: https://pkg.go.dev/time#time
@z
