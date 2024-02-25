%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: Introduction
description: An introduction to Hugo's render hooks.
categories: [render hooks]
keywords: []
menu:
  docs:
    identifier: render-hooks-introduction
    parent: render-hooks
    weight: 20
weight: 20
---
@y
---
title: Introduction
description: An introduction to Hugo's render hooks.
categories: [render hooks]
keywords: []
menu:
  docs:
    identifier: render-hooks-introduction
    parent: render-hooks
    weight: 20
weight: 20
---
@z

@x
When rendering Markdown to HTML, render hooks override the conversion. Each render hook is a template, with one template for each supported element type:
@y
When rendering Markdown to HTML, render hooks override the conversion. Each render hook is a template, with one template for each supported element type:
@z

@x
- [Code blocks](/render-hooks/code-blocks)
- [Headings](/render-hooks/headings)
- [Images](/render-hooks/images)
- [Links](/render-hooks/links)
@y
- [Code blocks](/render-hooks/code-blocks)
- [Headings](/render-hooks/headings)
- [Images](/render-hooks/images)
- [Links](/render-hooks/links)
@z

@x
{{% note %}}
Hugo supports multiple [content formats] including Markdown, HTML, AsciiDoc, Emacs Org Mode, Pandoc, and reStructuredText.
@y
{{% note %}}
Hugo supports multiple [content formats] including Markdown, HTML, AsciiDoc, Emacs Org Mode, Pandoc, and reStructuredText.
@z

@x
The render hook capability is limited to Markdown. You cannot create render hooks for the other content formats.
@y
The render hook capability is limited to Markdown. You cannot create render hooks for the other content formats.
@z

@x
[content formats]: /content-management/formats/
{{% /note %}}
@y
[content formats]: /content-management/formats/
{{% /note %}}
@z

@x
For example, consider this Markdown:
@y
For example, consider this Markdown:
@z

@x
```text
[Hugo](https://gohugo.io)
@y
```text
[Hugo](https://gohugo.io)
@z

@x
![kitten](kitten.jpg)
```
@y
![kitten](kitten.jpg)
```
@z

@x
Without link or image render hooks, this example above is rendered to:
@y
Without link or image render hooks, this example above is rendered to:
@z

@x
```html
<p><a href="https://gohugo.io">Hugo</a></p>
<p><img alt="kitten" src="kitten.jpg"></p>
```
@y
```html
<p><a href="https://gohugo.io">Hugo</a></p>
<p><img alt="kitten" src="kitten.jpg"></p>
```
@z

@x
By creating link and image render hooks, you can alter the conversion from Markdown to HTML. For example:
@y
By creating link and image render hooks, you can alter the conversion from Markdown to HTML. For example:
@z

@x
```html
<p><a href="https://gohugo.io" rel="external">Hugo</a></p>
<p><img alt="kitten" src="kitten.jpg" width="600" height="400"></p>
```
@y
```html
<p><a href="https://gohugo.io" rel="external">Hugo</a></p>
<p><img alt="kitten" src="kitten.jpg" width="600" height="400"></p>
```
@z

@x
Each render hook is a template, with one template for each supported element type:
@y
Each render hook is a template, with one template for each supported element type:
@z

@x
```text
layouts/
└── _default/
    └── _markup/
        ├── render-codeblock.html
        ├── render-heading.html
        ├── render-image.html
        └── render-link.html    
```
@y
```text
layouts/
└── _default/
    └── _markup/
        ├── render-codeblock.html
        ├── render-heading.html
        ├── render-image.html
        └── render-link.html    
```
@z

@x
The template lookup order allows you to create different render hooks for each page [type], [kind], language, and [output format]. For example:
@y
The template lookup order allows you to create different render hooks for each page [type], [kind], language, and [output format]. For example:
@z

@x
```text
layouts/
├── _default/
│   └── _markup/
│       ├── render-link.html
│       └── render-link.text.txt
├── books/
│   └── _markup/
│       ├── render-link.html
│       └── render-link.text.txt
└── films/
    └── _markup/
        ├── render-link.html
        └── render-link.text.txt
```
@y
```text
layouts/
├── _default/
│   └── _markup/
│       ├── render-link.html
│       └── render-link.text.txt
├── books/
│   └── _markup/
│       ├── render-link.html
│       └── render-link.text.txt
└── films/
    └── _markup/
        ├── render-link.html
        └── render-link.text.txt
```
@z

@x
[kind]: /getting-started/glossary/#page-kind
[output format]: /getting-started/glossary/#output-format
[type]: /getting-started/glossary/#content-type
@y
[kind]: /getting-started/glossary/#page-kind
[output format]: /getting-started/glossary/#output-format
[type]: /getting-started/glossary/#content-type
@z

@x
The remaining pages in this section describe each type of render hook, including examples and the context received by each template.
@y
The remaining pages in this section describe each type of render hook, including examples and the context received by each template.
@z
