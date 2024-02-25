%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: TableOfContents
description: Returns a table of contents for the given page.
categories: []
keywords: []
action:
  related:
    - methods/page/Fragments
  returnType: template.HTML
  signatures: [PAGE.TableOfContents]
---
@y
---
title: TableOfContents
description: Returns a table of contents for the given page.
categories: []
keywords: []
action:
  related:
    - methods/page/Fragments
  returnType: template.HTML
  signatures: [PAGE.TableOfContents]
---
@z

@x
The `TableOfContents` method on a `Page` object returns an ordered or unordered list of the Markdown [ATX] and [setext] headings within the page content.
@y
The `TableOfContents` method on a `Page` object returns an ordered or unordered list of the Markdown [ATX] and [setext] headings within the page content.
@z

@x
[atx]: https://spec.commonmark.org/0.30/#atx-headings
[setext]: https://spec.commonmark.org/0.30/#setext-headings
@y
[atx]: https://spec.commonmark.org/0.30/#atx-headings
[setext]: https://spec.commonmark.org/0.30/#setext-headings
@z

@x
This template code:
@y
This template code:
@z

@x
```go-html-template
{{ .TableOfContents }}
```
@y
```go-html-template
{{ .TableOfContents }}
```
@z

@x
Produces this HTML:
@y
Produces this HTML:
@z

@x
```html
<nav id="TableOfContents">
  <ul>
    <li><a href="#section-1">Section 1</a>
      <ul>
        <li><a href="#section-11">Section 1.1</a></li>
        <li><a href="#section-12">Section 1.2</a></li>
      </ul>
    </li>
    <li><a href="#section-2">Section 2</a></li>
  </ul>
</nav>
```
@y
```html
<nav id="TableOfContents">
  <ul>
    <li><a href="#section-1">Section 1</a>
      <ul>
        <li><a href="#section-11">Section 1.1</a></li>
        <li><a href="#section-12">Section 1.2</a></li>
      </ul>
    </li>
    <li><a href="#section-2">Section 2</a></li>
  </ul>
</nav>
```
@z

@x
By default, the `TableOfContents` method returns an unordered list of level 2 and level 3 headings. You can adjust this in your site configuration:
@y
By default, the `TableOfContents` method returns an unordered list of level 2 and level 3 headings. You can adjust this in your site configuration:
@z

@x
{{< code-toggle file=hugo >}}
[markup.tableOfContents]
endLevel = 3
ordered = false
startLevel = 2
{{< /code-toggle >}}
@y
{{< code-toggle file=hugo >}}
[markup.tableOfContents]
endLevel = 3
ordered = false
startLevel = 2
{{< /code-toggle >}}
@z
