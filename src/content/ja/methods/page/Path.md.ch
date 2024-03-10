%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: Path
description: Returns the logical path of the given page.
categories: []
keywords: []
action:
  related:
    - methods/page/File
    - methods/page/RelPermalink
  returnType: string
  signatures: [PAGE.Path]
toc: true
---
@y
---
title: Path
description: Returns the logical path of the given page.
categories: []
keywords: []
action:
  related:
    - methods/page/File
    - methods/page/RelPermalink
  returnType: string
  signatures: [PAGE.Path]
toc: true
---
@z

@x
{{< new-in 0.123.0 >}}
@y
{{< new-in 0.123.0 >}}
@z

@x
The `Path` method on a `Page` object returns the logical path of the given page, regardless of whether the page is backed by a file.
@y
The `Path` method on a `Page` object returns the logical path of the given page, regardless of whether the page is backed by a file.
@z

@x
[logical path]: /getting-started/glossary#logical-path
@y
[logical path]: /getting-started/glossary#logical-path
@z

@x
```go-html-template
{{ .Path }} → /posts/post-1
```
@y
```go-html-template
{{ .Path }} → /posts/post-1
```
@z

@x
This value is neither a file path nor a relative URL. It is a logical identifier for each page, independent of content format, language, and URL modifiers.
@y
This value is neither a file path nor a relative URL. It is a logical identifier for each page, independent of content format, language, and URL modifiers.
@z

@x
{{% note %}}
Beginning with the release of [v0.92.0] in January 2022, Hugo emitted a warning whenever calling the `Path` method. The warning indicated that this method would change in a future release.
@y
{{% note %}}
Beginning with the release of [v0.92.0] in January 2022, Hugo emitted a warning whenever calling the `Path` method. The warning indicated that this method would change in a future release.
@z

@x
The meaning of, and value returned by, the `Path` method on a `Page` object changed with the release of [v0.123.0] in February 2024.
@y
The meaning of, and value returned by, the `Path` method on a `Page` object changed with the release of [v0.123.0] in February 2024.
@z

@x
[v0.92.0]: https://github.com/gohugoio/hugo/releases/tag/v0.92.0
[v0.123.0]: https://github.com/gohugoio/hugo/releases/tag/v0.123.0
{{% /note %}}
@y
[v0.92.0]: https://github.com/gohugoio/hugo/releases/tag/v0.92.0
[v0.123.0]: https://github.com/gohugoio/hugo/releases/tag/v0.123.0
{{% /note %}}
@z

@x
To determine the logical path for pages backed by a file, Hugo starts with the file path, relative to the content directory, and then:
@y
To determine the logical path for pages backed by a file, Hugo starts with the file path, relative to the content directory, and then:
@z

@x
1. Strips the file extension
2. Strips the language identifier
3. Converts the result to lower case
4. Replaces spaces with hyphens
@y
1. Strips the file extension
2. Strips the language identifier
3. Converts the result to lower case
4. Replaces spaces with hyphens
@z

@x
The value returned by the `Path` method on a `Page` object is independent of content format, language, and URL modifiers such as the `slug` and `url` front matter fields.
@y
The value returned by the `Path` method on a `Page` object is independent of content format, language, and URL modifiers such as the `slug` and `url` front matter fields.
@z

@x
## Examples
@y
## Examples
@z

@x
### Monolingual site
@y
### Monolingual site
@z

@x
Note that the logical path is independent of content format and URL modifiers.
@y
Note that the logical path is independent of content format and URL modifiers.
@z

@x
File path|Front matter slug|Logical path
:--|:--|:--
`content/_index.md`||`/`
`content/posts/_index.md`||`/posts`
`content/posts/post-1.md`|`foo`|`/posts/post-1`
`content/posts/post-2.html`|`bar`|`/posts/post-2`
@y
File path|Front matter slug|Logical path
:--|:--|:--
`content/_index.md`||`/`
`content/posts/_index.md`||`/posts`
`content/posts/post-1.md`|`foo`|`/posts/post-1`
`content/posts/post-2.html`|`bar`|`/posts/post-2`
@z

@x
### Multilingual site
@y
### Multilingual site
@z

@x
Note that the logical path is independent of content format, language identifiers, and URL modifiers.
@y
Note that the logical path is independent of content format, language identifiers, and URL modifiers.
@z

@x
File path|Front matter slug|Logical path
:--|:--|:--
`content/_index.en.md`||`/`
`content/_index.de.md`||`/`
`content/posts/_index.en.md`||`/posts`
`content/posts/_index.de.md`||`/posts`
`content/posts/posts-1.en.md`|`foo`|`/posts/post-1`
`content/posts/posts-1.de.md`|`foo`|`/posts/post-1`
`content/posts/posts-2.en.html`|`bar`|`/posts/post-2`
`content/posts/posts-2.de.html`|`bar`|`/posts/post-2`
@y
File path|Front matter slug|Logical path
:--|:--|:--
`content/_index.en.md`||`/`
`content/_index.de.md`||`/`
`content/posts/_index.en.md`||`/posts`
`content/posts/_index.de.md`||`/posts`
`content/posts/posts-1.en.md`|`foo`|`/posts/post-1`
`content/posts/posts-1.de.md`|`foo`|`/posts/post-1`
`content/posts/posts-2.en.html`|`bar`|`/posts/post-2`
`content/posts/posts-2.de.html`|`bar`|`/posts/post-2`
@z

@x
### Pages not backed by a file
@y
### Pages not backed by a file
@z

@x
The `Path` method on a `Page` object returns a value regardless of whether the page is backed by a file.
@y
The `Path` method on a `Page` object returns a value regardless of whether the page is backed by a file.
@z

@x
```text
content/
└── posts/
    └── post-1.md  <-- front matter: tags = ['hugo']
```
@y
```text
content/
└── posts/
    └── post-1.md  <-- front matter: tags = ['hugo']
```
@z

@x
When you build the site:
@y
When you build the site:
@z

@x
```text
public/
├── posts/
│   ├── post-1/
│   │   └── index.html    .Page.Path = /posts/post-1
│   └── index.html        .Page.Path = /posts
├── tags/
│   ├── hugo/
│   │   └── index.html    .Page.Path = /tags/hugo
│   └── index.html        .Page.Path = /tags
└── index.html            .Page.Path = /
```
@y
```text
public/
├── posts/
│   ├── post-1/
│   │   └── index.html    .Page.Path = /posts/post-1
│   └── index.html        .Page.Path = /posts
├── tags/
│   ├── hugo/
│   │   └── index.html    .Page.Path = /tags/hugo
│   └── index.html        .Page.Path = /tags
└── index.html            .Page.Path = /
```
@z

@x
## Finding pages
@y
## Finding pages
@z

@x
These methods, functions, and shortcodes use the logical path to find the given page:
@y
These methods, functions, and shortcodes use the logical path to find the given page:
@z

@x
Methods|Functions|Shortcodes
:--|:--|:--
[`Site.GetPage`]|[`urls.Ref`]|[`ref`]
[`Page.GetPage`]|[`urls.RelRef`]|[`relref`]
[`Page.Ref`]||
[`Page.RelRef`]||
[`Shortcode.Ref`]||
[`Shortcode.RelRef`]||
@y
Methods|Functions|Shortcodes
:--|:--|:--
[`Site.GetPage`]|[`urls.Ref`]|[`ref`]
[`Page.GetPage`]|[`urls.RelRef`]|[`relref`]
[`Page.Ref`]||
[`Page.RelRef`]||
[`Shortcode.Ref`]||
[`Shortcode.RelRef`]||
@z

@x
[`urls.Ref`]: /functions/urls/ref/
[`urls.RelRef`]: /functions/urls/relref/
[`Page.GetPage`]: /methods/page/getpage/
[`Site.GetPage`]: /methods/site/getpage/
[`ref`]: /content-management/shortcodes/#ref
[`relref`]: /content-management/shortcodes/#relref
[`Page.Ref`]: /methods/page/ref/
[`Page.RelRef`]: /methods/page/relref/
[`Shortcode.Ref`]: /methods/shortcode/ref
[`Shortcode.RelRef`]: /methods/shortcode/relref
@y
[`urls.Ref`]: /functions/urls/ref/
[`urls.RelRef`]: /functions/urls/relref/
[`Page.GetPage`]: /methods/page/getpage/
[`Site.GetPage`]: /methods/site/getpage/
[`ref`]: /content-management/shortcodes/#ref
[`relref`]: /content-management/shortcodes/#relref
[`Page.Ref`]: /methods/page/ref/
[`Page.RelRef`]: /methods/page/relref/
[`Shortcode.Ref`]: /methods/shortcode/ref
[`Shortcode.RelRef`]: /methods/shortcode/relref
@z

@x
{{% note %}}
Specify the logical path when using any of these methods, functions, or shortcodes. If you include a file extension or language identifier, Hugo will strip these values before finding the page in the logical tree.
{{% /note %}}
@y
{{% note %}}
Specify the logical path when using any of these methods, functions, or shortcodes. If you include a file extension or language identifier, Hugo will strip these values before finding the page in the logical tree.
{{% /note %}}
@z

@x
## Logical tree
@y
## Logical tree
@z

@x
Just as file paths form a file tree, logical paths form a logical tree.
@y
Just as file paths form a file tree, logical paths form a logical tree.
@z

@x
A file tree:
@y
A file tree:
@z

@x
```text
content/
└── s1/
    ├── p1/
    │   └── index.md 
    └── p2.md
```
@y
```text
content/
└── s1/
    ├── p1/
    │   └── index.md 
    └── p2.md
```
@z

@x
The same content represented as a logical tree:
@y
The same content represented as a logical tree:
@z

@x
```text
content/
└── s1/
    ├── p1
    └── p2 
```
@y
```text
content/
└── s1/
    ├── p1
    └── p2 
```
@z

@x
A key difference between these trees is the relative path from p1 to p2:
@y
A key difference between these trees is the relative path from p1 to p2:
@z

@x
- In the file tree, the relative path from p1 to p2 is `../p2.md`
- In the logical tree, the relative path is `p2`
@y
- In the file tree, the relative path from p1 to p2 is `../p2.md`
- In the logical tree, the relative path is `p2`
@z

@x
{{% note %}}
Remember to use the logical path when using any of the methods, functions, or shortcodes listed in the previous section. If you include a file extension or language identifier, Hugo will strip these values before finding the page in the logical tree.
{{% /note %}}
@y
{{% note %}}
Remember to use the logical path when using any of the methods, functions, or shortcodes listed in the previous section. If you include a file extension or language identifier, Hugo will strip these values before finding the page in the logical tree.
{{% /note %}}
@z
