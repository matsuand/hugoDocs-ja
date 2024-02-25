%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: Page
description: Returns the Page object from which the shortcode was called.
categories: []
keywords: []
action:
  related: []
  returnType: hugolib.pageForShortcode
  signatures: [SHORTCODE.Page]
---
@y
---
title: Page
description: Returns the Page object from which the shortcode was called.
categories: []
keywords: []
action:
  related: []
  returnType: hugolib.pageForShortcode
  signatures: [SHORTCODE.Page]
---
@z

@x
With this content:
@y
With this content:
@z

@x
{{< code-toggle file=content/books/les-miserables.md fm=true >}}
title = 'Les Misérables'
author = 'Victor Hugo'
publication_year = 1862
isbn = '978-0451419439'
{{< /code-toggle >}}
@y
{{< code-toggle file=content/books/les-miserables.md fm=true >}}
title = 'Les Misérables'
author = 'Victor Hugo'
publication_year = 1862
isbn = '978-0451419439'
{{< /code-toggle >}}
@z

@x
Calling this shortcode:
@y
Calling this shortcode:
@z

@x
```text
{{</* book-details */>}}
```
@y
```text
{{</* book-details */>}}
```
@z

@x
We can access the front matter values using the `Page` method:
@y
We can access the front matter values using the `Page` method:
@z

@x
{{< code file=layouts/shortcodes/book-details.html  >}}
<ul>
  <li>Title: {{ .Page.Title }}</li>
  <li>Author: {{ .Page.Params.author }}</li>
  <li>Published: {{ .Page.Params.publication_year }}</li>
  <li>ISBN: {{ .Page.Params.isbn }}</li>
</ul>
{{< /code >}}
@y
{{< code file=layouts/shortcodes/book-details.html  >}}
<ul>
  <li>Title: {{ .Page.Title }}</li>
  <li>Author: {{ .Page.Params.author }}</li>
  <li>Published: {{ .Page.Params.publication_year }}</li>
  <li>ISBN: {{ .Page.Params.isbn }}</li>
</ul>
{{< /code >}}
@z
