%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: Links and cross references
description: Shortcodes for creating links to documents.
categories: [content management]
keywords: [cross references,references,anchors,urls]
menu:
  docs:
    parent: content-management
    weight: 170
weight: 170
toc: true
aliases: [/extras/crossreferences/]
---
@y
---
title: Links and cross references
description: Shortcodes for creating links to documents.
categories: [content management]
keywords: [cross references,references,anchors,urls]
menu:
  docs:
    parent: content-management
    weight: 170
weight: 170
toc: true
aliases: [/extras/crossreferences/]
---
@z

@x
The `ref` and `relref` shortcodes display the absolute and relative permalinks to a document, respectively.
@y
The `ref` and `relref` shortcodes display the absolute and relative permalinks to a document, respectively.
@z

@x
## Use of `ref` and `relref`
@y
## Use of `ref` and `relref`
@z

@x
The `ref` and `relref` shortcodes require a single parameter: the path to a content document, with or without a file extension, with or without an anchor. Paths without a leading `/` are first resolved relative to the current page, then to the remainder of the site.
@y
The `ref` and `relref` shortcodes require a single parameter: the path to a content document, with or without a file extension, with or without an anchor. Paths without a leading `/` are first resolved relative to the current page, then to the remainder of the site.
@z

@x
```text
.
└── content
    ├── about
    |   ├── _index.md
    |   └── credits.md
    ├── pages
    |   ├── document1.md
    |   └── document2.md    // has anchor #anchor
    ├── products
    |   └── index.md
    └── blog
        └── my-post.md
```
@y
```text
.
└── content
    ├── about
    |   ├── _index.md
    |   └── credits.md
    ├── pages
    |   ├── document1.md
    |   └── document2.md    // has anchor #anchor
    ├── products
    |   └── index.md
    └── blog
        └── my-post.md
```
@z

@x
The pages can be referenced as follows:
@y
The pages can be referenced as follows:
@z

@x
```text
{{</* ref "document2" */>}}             // <- From pages/document1.md, relative path
{{</* ref "document2#anchor" */>}}      
{{</* ref "document2.md" */>}}          
{{</* ref "document2.md#anchor" */>}}   
{{</* ref "#anchor" */>}}               // <- From pages/document2.md
{{</* ref "/blog/my-post" */>}}         // <- From anywhere, absolute path
{{</* ref "/blog/my-post.md" */>}}
{{</* relref "document" */>}}
{{</* relref "document.md" */>}}
{{</* relref "#anchor" */>}}
{{</* relref "/blog/my-post.md" */>}}
```
@y
```text
{{</* ref "document2" */>}}             // <- From pages/document1.md, relative path
{{</* ref "document2#anchor" */>}}      
{{</* ref "document2.md" */>}}          
{{</* ref "document2.md#anchor" */>}}   
{{</* ref "#anchor" */>}}               // <- From pages/document2.md
{{</* ref "/blog/my-post" */>}}         // <- From anywhere, absolute path
{{</* ref "/blog/my-post.md" */>}}
{{</* relref "document" */>}}
{{</* relref "document.md" */>}}
{{</* relref "#anchor" */>}}
{{</* relref "/blog/my-post.md" */>}}
```
@z

@x
index.md can be reference either by its path or by its containing folder without the ending `/`. \_index.md can be referenced only by its containing folder:
@y
index.md can be reference either by its path or by its containing folder without the ending `/`. \_index.md can be referenced only by its containing folder:
@z

@x
```text
{{</* ref "/about" */>}}             // <- References /about/_index.md
{{</* ref "/about/_index" */>}}      //    Raises REF_NOT_FOUND error
{{</* ref "/about/credits.md" */>}}  // <- References /about/credits.md
@y
```text
{{</* ref "/about" */>}}             // <- References /about/_index.md
{{</* ref "/about/_index" */>}}      //    Raises REF_NOT_FOUND error
{{</* ref "/about/credits.md" */>}}  // <- References /about/credits.md
@z

@x
{{</* ref "/products" */>}}          // <- References /products/index.md
{{</* ref "/products/index" */>}}    // <- References /products/index.md
```
@y
{{</* ref "/products" */>}}          // <- References /products/index.md
{{</* ref "/products/index" */>}}    // <- References /products/index.md
```
@z

@x
To generate a hyperlink using `ref` or `relref` in Markdown:
@y
To generate a hyperlink using `ref` or `relref` in Markdown:
@z

@x
```text
[About]({{</* ref "/about" */>}} "About Us")
```
@y
```text
[About]({{</* ref "/about" */>}} "About Us")
```
@z

@x
Hugo emits an error or warning if a document cannot be uniquely resolved. The error behavior is configurable; see below.
@y
Hugo emits an error or warning if a document cannot be uniquely resolved. The error behavior is configurable; see below.
@z

@x
### Link to another language version
@y
### Link to another language version
@z

@x
To link to another language version of a document, use this syntax:
@y
To link to another language version of a document, use this syntax:
@z

@x
```text
{{</* relref path="document.md" lang="ja" */>}}
```
@y
```text
{{</* relref path="document.md" lang="ja" */>}}
```
@z

@x
### Get another output format
@y
### Get another output format
@z

@x
To link to another Output Format of a document, use this syntax:
@y
To link to another Output Format of a document, use this syntax:
@z

@x
```text
{{</* relref path="document.md" outputFormat="rss" */>}}
```
@y
```text
{{</* relref path="document.md" outputFormat="rss" */>}}
```
@z

@x
### Heading IDs
@y
### Heading IDs
@z

@x
When using Markdown document types, Hugo generates element IDs for every heading on a page. For example:
@y
When using Markdown document types, Hugo generates element IDs for every heading on a page. For example:
@z

@x
```text
## Reference
```
@y
```text
## Reference
```
@z

@x
produces this HTML:
@y
produces this HTML:
@z

@x
```html
<h2 id="reference">Reference</h2>
```
@y
```html
<h2 id="reference">Reference</h2>
```
@z

@x
Get the permalink to a heading by appending the ID to the path when using the `ref` or `relref` shortcodes:
@y
Get the permalink to a heading by appending the ID to the path when using the `ref` or `relref` shortcodes:
@z

@x
```text
{{</* ref "document.md#reference" */>}}
{{</* relref "document.md#reference" */>}}
```
@y
```text
{{</* ref "document.md#reference" */>}}
{{</* relref "document.md#reference" */>}}
```
@z

@x
Generate a custom heading ID by including an attribute. For example:
@y
Generate a custom heading ID by including an attribute. For example:
@z

@x
```text
## Reference A {#foo}
## Reference B {id="bar"}
```
@y
```text
## Reference A {#foo}
## Reference B {id="bar"}
```
@z

@x
produces this HTML:
@y
produces this HTML:
@z

@x
```html
<h2 id="foo">Reference A</h2>
<h2 id="bar">Reference B</h2>
```
@y
```html
<h2 id="foo">Reference A</h2>
<h2 id="bar">Reference B</h2>
```
@z

@x
Hugo will generate unique element IDs if the same heading appears more than once on a page. For example:
@y
Hugo will generate unique element IDs if the same heading appears more than once on a page. For example:
@z

@x
```text
## Reference
## Reference
## Reference
```
@y
```text
## Reference
## Reference
## Reference
```
@z

@x
produces this HTML:
@y
produces this HTML:
@z

@x
```html
<h2 id="reference">Reference</h2>
<h2 id="reference-1">Reference</h2>
<h2 id="reference-2">Reference</h2>
```
@y
```html
<h2 id="reference">Reference</h2>
<h2 id="reference-1">Reference</h2>
<h2 id="reference-2">Reference</h2>
```
@z

@x
## Ref and RelRef Configuration
@y
## Ref and RelRef Configuration
@z

@x
The behavior can be configured in `hugo.toml`:
@y
The behavior can be configured in `hugo.toml`:
@z

@x
refLinksErrorLevel ("ERROR")
: When using `ref` or `relref` to resolve page links and a link cannot resolved, it will be logged with this log level. Valid values are `ERROR` (default) or `WARNING`. Any `ERROR` will fail the build (`exit -1`).
@y
refLinksErrorLevel ("ERROR")
: When using `ref` or `relref` to resolve page links and a link cannot resolved, it will be logged with this log level. Valid values are `ERROR` (default) or `WARNING`. Any `ERROR` will fail the build (`exit -1`).
@z

@x
refLinksNotFoundURL
: URL to be used as a placeholder when a page reference cannot be found in `ref` or `relref`. Is used as-is.
@y
refLinksNotFoundURL
: URL to be used as a placeholder when a page reference cannot be found in `ref` or `relref`. Is used as-is.
@z

@x
[lists]: /templates/lists/
[output formats]: /templates/output-formats/
[shortcode]: /content-management/shortcodes/
@y
[lists]: /templates/lists/
[output formats]: /templates/output-formats/
[shortcode]: /content-management/shortcodes/
@z
