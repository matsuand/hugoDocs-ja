%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
# Do not remove front matter.
---
@y
---
# Do not remove front matter.
---
@z

@x
Hugo determines the _next_ and _previous_ page by sorting the page collection according to this sorting hierarchy:
@y
Hugo determines the _next_ and _previous_ page by sorting the page collection according to this sorting hierarchy:
@z

@x
Field|Precedence|Sort direction
:--|:--|:--
[`weight`]|1|descending
[`date`]|2|descending
[`linkTitle`]|3|descending
[`path`]|4|descending
@y
Field|Precedence|Sort direction
:--|:--|:--
[`weight`]|1|descending
[`date`]|2|descending
[`linkTitle`]|3|descending
[`path`]|4|descending
@z

@x
[`date`]: /methods/page/date/
[`weight`]: /methods/page/weight/
[`linkTitle`]: /methods/page/linktitle/
[`path`]: /methods/page/path/
@y
[`date`]: /methods/page/date/
[`weight`]: /methods/page/weight/
[`linkTitle`]: /methods/page/linktitle/
[`path`]: /methods/page/path/
@z

@x
The sorted page collection used to determine the _next_ and _previous_ page is independent of other page collections, which may lead to unexpected behavior.
@y
The sorted page collection used to determine the _next_ and _previous_ page is independent of other page collections, which may lead to unexpected behavior.
@z

@x
For example, with this content structure:
@y
For example, with this content structure:
@z

@x
```text
content/
├── pages/
│   ├── _index.md
│   ├── page-1.md   <-- front matter: weight = 10
│   ├── page-2.md   <-- front matter: weight = 20
│   └── page-3.md   <-- front matter: weight = 30
└── _index.md
```
@y
```text
content/
├── pages/
│   ├── _index.md
│   ├── page-1.md   <-- front matter: weight = 10
│   ├── page-2.md   <-- front matter: weight = 20
│   └── page-3.md   <-- front matter: weight = 30
└── _index.md
```
@z

@x
And these templates:
@y
And these templates:
@z

@x
{{< code file=layouts/_default/list.html >}}
{{ range .Pages.ByWeight}}
  <h2><a href="{{ .RelPermalink }}">{{ .LinkTitle }}</a></h2>
{{ end }}
{{< /code >}}
@y
{{< code file=layouts/_default/list.html >}}
{{ range .Pages.ByWeight}}
  <h2><a href="{{ .RelPermalink }}">{{ .LinkTitle }}</a></h2>
{{ end }}
{{< /code >}}
@z

@x
{{< code file=layouts/_default/single.html >}}
{{ $pages := .CurrentSection.Pages.ByWeight }}
@y
{{< code file=layouts/_default/single.html >}}
{{ $pages := .CurrentSection.Pages.ByWeight }}
@z

@x
{{ with $pages.Prev . }}
  <a href="{{ .RelPermalink }}">Previous</a>
{{ end }}
@y
{{ with $pages.Prev . }}
  <a href="{{ .RelPermalink }}">Previous</a>
{{ end }}
@z

@x
{{ with $pages.Next . }}
  <a href="{{ .RelPermalink }}">Next</a>
{{ end }}
{{< /code >}}
@y
{{ with $pages.Next . }}
  <a href="{{ .RelPermalink }}">Next</a>
{{ end }}
{{< /code >}}
@z

@x
When you visit page-2:
@y
When you visit page-2:
@z

@x
- The `Prev` method points to page-3
- The `Next` method points to page-1
@y
- The `Prev` method points to page-3
- The `Next` method points to page-1
@z

@x
To reverse the meaning of _next_ and _previous_ you can chain the [`Reverse`] method to the page collection definition:
@y
To reverse the meaning of _next_ and _previous_ you can chain the [`Reverse`] method to the page collection definition:
@z

@x
{{< code file=layouts/_default/single.html >}}
{{ $pages := .CurrentSection.Pages.ByWeight.Reverse }}
@y
{{< code file=layouts/_default/single.html >}}
{{ $pages := .CurrentSection.Pages.ByWeight.Reverse }}
@z

@x
{{ with $pages.Prev . }}
  <a href="{{ .RelPermalink }}">Previous</a>
{{ end }}
@y
{{ with $pages.Prev . }}
  <a href="{{ .RelPermalink }}">Previous</a>
{{ end }}
@z

@x
{{ with $pages.Next . }}
  <a href="{{ .RelPermalink }}">Next</a>
{{ end }}
{{< /code >}}
@y
{{ with $pages.Next . }}
  <a href="{{ .RelPermalink }}">Next</a>
{{ end }}
{{< /code >}}
@z

@x
[`Reverse`]: /methods/pages/reverse/
@y
[`Reverse`]: /methods/pages/reverse/
@z
