%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: NextInSection
description: Returns the next page within a section, relative to the given page. 
categories: []
keywords: []
action:
  related:
    - methods/page/PrevInSection
    - methods/page/Next
    - methods/page/Prev
    - methods/pages/Next
    - methods/pages/Prev
  returnType: page.Page
  signatures: [PAGE.NextInSection]
---
@y
---
title: NextInSection
description: Returns the next page within a section, relative to the given page. 
categories: []
keywords: []
action:
  related:
    - methods/page/PrevInSection
    - methods/page/Next
    - methods/page/Prev
    - methods/pages/Next
    - methods/pages/Prev
  returnType: page.Page
  signatures: [PAGE.NextInSection]
---
@z

@x
The behavior of the `PrevInSection` and `NextInSection` methods on a `Page` object is probably the reverse of what you expect.
@y
The behavior of the `PrevInSection` and `NextInSection` methods on a `Page` object is probably the reverse of what you expect.
@z

@x
With this content structure:
@y
With this content structure:
@z

@x
```text
content/
├── books/
│   ├── _index.md
│   ├── book-1.md
│   ├── book-2.md
│   └── book-3.md
├── films/
│   ├── _index.md
│   ├── film-1.md
│   ├── film-2.md
│   └── film-3.md
└── _index.md
```
@y
```text
content/
├── books/
│   ├── _index.md
│   ├── book-1.md
│   ├── book-2.md
│   └── book-3.md
├── films/
│   ├── _index.md
│   ├── film-1.md
│   ├── film-2.md
│   └── film-3.md
└── _index.md
```
@z

@x
When you visit book-2:
@y
When you visit book-2:
@z

@x
- The `PrevInSection` method points to book-3
- The `NextInSection` method points to book-1
@y
- The `PrevInSection` method points to book-3
- The `NextInSection` method points to book-1
@z

@x
{{% note %}}
Use the opposite label in your navigation links as shown in the example below.
{{% /note %}}
@y
{{% note %}}
Use the opposite label in your navigation links as shown in the example below.
{{% /note %}}
@z

@x
```go-html-template
{{ with .NextInSection }}
  <a href="{{ .RelPermalink }}">Previous in section</a>
{{ end }}
@y
```go-html-template
{{ with .NextInSection }}
  <a href="{{ .RelPermalink }}">Previous in section</a>
{{ end }}
@z

@x
{{ with .PrevInSection }}
  <a href="{{ .RelPermalink }}">Next in section</a>
{{ end }}
```
@y
{{ with .PrevInSection }}
  <a href="{{ .RelPermalink }}">Next in section</a>
{{ end }}
```
@z

@x
{{% note %}}
The navigation sort order may be different than the page collection sort order.
{{% /note %}}
@y
{{% note %}}
The navigation sort order may be different than the page collection sort order.
{{% /note %}}
@z

@x
With the `PrevInSection` and `NextInSection` methods, the navigation sort order is fixed, using Hugo’s default sort order. In order of precedence:
@y
With the `PrevInSection` and `NextInSection` methods, the navigation sort order is fixed, using Hugo’s default sort order. In order of precedence:
@z

@x
1. Page [weight]
2. Page [date] (descending)
3. Page [linkTitle], falling back to page [title]
4. Page file path if the page is backed by a file
@y
1. Page [weight]
2. Page [date] (descending)
3. Page [linkTitle], falling back to page [title]
4. Page file path if the page is backed by a file
@z

@x
For example, with a page collection sorted by title, the navigation sort order will use Hugo’s default sort order. This is probably not what you want or expect. For this reason, the Next and Prev methods on a Pages object are generally a better choice.
@y
For example, with a page collection sorted by title, the navigation sort order will use Hugo’s default sort order. This is probably not what you want or expect. For this reason, the Next and Prev methods on a Pages object are generally a better choice.
@z

@x
[date]: /methods/page/date/
[weight]: /methods/page/weight/
[linkTitle]: /methods/page/linktitle/
[title]: /methods/page/title/
@y
[date]: /methods/page/date/
[weight]: /methods/page/weight/
[linkTitle]: /methods/page/linktitle/
[title]: /methods/page/title/
@z
