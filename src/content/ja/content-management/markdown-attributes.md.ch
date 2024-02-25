%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
---
title: Markdown attributes
description: Use mardown attributes to add HTML attributes when rendering Markdown to HTML.
categories: [content management]
keywords: [goldmark,markdown]
menu:
  docs:
    parent: content-management
    weight: 240
weight: 240
toc: true
---
@y
---
title: Markdown attributes
description: Use mardown attributes to add HTML attributes when rendering Markdown to HTML.
categories: [content management]
keywords: [goldmark,markdown]
menu:
  docs:
    parent: content-management
    weight: 240
weight: 240
toc: true
---
@z

@x
## Overview
@y
## Overview
@z

@x
Hugo supports Markdown attributes on images and block elements including blockquotes, fenced code blocks, headings, horizontal rules, lists, paragraphs, and tables.
@y
Hugo supports Markdown attributes on images and block elements including blockquotes, fenced code blocks, headings, horizontal rules, lists, paragraphs, and tables.
@z

@x
For example:
@y
For example:
@z

@x
```text
This is a paragraph.
{class="foo bar" id="baz"}
```
@y
```text
This is a paragraph.
{class="foo bar" id="baz"}
```
@z

@x
With `class` and `id` you can use shorthand notation:
@y
With `class` and `id` you can use shorthand notation:
@z

@x
```text
This is a paragraph.
{.foo .bar #baz}
```
@y
```text
This is a paragraph.
{.foo .bar #baz}
```
@z

@x
Hugo renders both of these to:
@y
Hugo renders both of these to:
@z

@x
```html
<p class="foo bar" id="baz">This is a paragraph.</p>
```
@y
```html
<p class="foo bar" id="baz">This is a paragraph.</p>
```
@z

@x
## Block elements
@y
## Block elements
@z

@x
Update your site configuration to enable Markdown attributes for block-level elements.
@y
Update your site configuration to enable Markdown attributes for block-level elements.
@z

@x
{{< code-toggle file=hugo >}}
[markup.goldmark.parser.attribute]
title = true # default is true
block = true # default is false
{{< /code-toggle >}}
@y
{{< code-toggle file=hugo >}}
[markup.goldmark.parser.attribute]
title = true # default is true
block = true # default is false
{{< /code-toggle >}}
@z

@x
## Standalone images
@y
## Standalone images
@z

@x
By default, when the [Goldmark] Markdown renderer encounters a standalone image element (no other elements or text on the same line), it wraps the image element within a paragraph element per the [CommonMark specification].
@y
By default, when the [Goldmark] Markdown renderer encounters a standalone image element (no other elements or text on the same line), it wraps the image element within a paragraph element per the [CommonMark specification].
@z

@x
[CommonMark specification]: https://spec.commonmark.org/current/
[Goldmark]: https://github.com/yuin/goldmark
@y
[CommonMark specification]: https://spec.commonmark.org/current/
[Goldmark]: https://github.com/yuin/goldmark
@z

@x
If you were to place an attribute list beneath an image element, Hugo would apply the attributes to the surrounding paragraph, not the image.
@y
If you were to place an attribute list beneath an image element, Hugo would apply the attributes to the surrounding paragraph, not the image.
@z

@x
To apply attributes to a standalone image element, you must disable the default wrapping behavior:
@y
To apply attributes to a standalone image element, you must disable the default wrapping behavior:
@z

@x
{{< code-toggle file=hugo >}}
[markup.goldmark.parser]
wrapStandAloneImageWithinParagraph = false # default is true
{{< /code-toggle >}}
@y
{{< code-toggle file=hugo >}}
[markup.goldmark.parser]
wrapStandAloneImageWithinParagraph = false # default is true
{{< /code-toggle >}}
@z

@x
## Usage
@y
## Usage
@z

@x
You may add [global HTML attributes], or HTML attributes specific to the current element type. Consistent with its content security model, Hugo removes HTML event attributes such as `onclick` and `onmouseover`.
@y
You may add [global HTML attributes], or HTML attributes specific to the current element type. Consistent with its content security model, Hugo removes HTML event attributes such as `onclick` and `onmouseover`.
@z

@x
[global HTML attributes]: https://developer.mozilla.org/en-US/docs/Web/HTML/Global_attributes
@y
[global HTML attributes]: https://developer.mozilla.org/en-US/docs/Web/HTML/Global_attributes
@z

@x
The attribute list consists of one or more key/value pairs, separated by spaces or commas, wrapped by braces. You must quote string values that contain spaces. Unlike HTML, boolean attributes must have both key and value.
@y
The attribute list consists of one or more key/value pairs, separated by spaces or commas, wrapped by braces. You must quote string values that contain spaces. Unlike HTML, boolean attributes must have both key and value.
@z

@x
For example:
@y
For example:
@z

@x
```text
> This is a blockquote.
{class="foo bar" hidden=hidden}
```
@y
```text
> This is a blockquote.
{class="foo bar" hidden=hidden}
```
@z

@x
Hugo renders this to:
@y
Hugo renders this to:
@z

@x
```html
<blockquote class="foo bar" hidden="hidden">
  <p>This is a blockquote.</p>
</blockquote>
```
@y
```html
<blockquote class="foo bar" hidden="hidden">
  <p>This is a blockquote.</p>
</blockquote>
```
@z

@x
In most cases, place the attribute list beneath the markup element. For headings and fenced code blocks, place the attribute list on the right.
@y
In most cases, place the attribute list beneath the markup element. For headings and fenced code blocks, place the attribute list on the right.
@z

@x
Element|Position of attribute list
:--|:--
blockquote | bottom
fenced code block | right
heading | right
horizontal rule | bottom
image | bottom
list  | bottom
paragraph | bottom
table | bottom
@y
Element|Position of attribute list
:--|:--
blockquote | bottom
fenced code block | right
heading | right
horizontal rule | bottom
image | bottom
list  | bottom
paragraph | bottom
table | bottom
@z

@x
For example:
@y
For example:
@z

@x
````text
## Section 1 {class=foo}
@y
````text
## Section 1 {class=foo}
@z

@x
```bash {class=foo linenos=inline}
declare a=1
echo "${a}"
```
@y
```bash {class=foo linenos=inline}
declare a=1
echo "${a}"
```
@z

@x
This is a paragraph.
{class=foo}
````
@y
This is a paragraph.
{class=foo}
````
@z

@x
As shown above, the attribute list for fenced code blocks is not limited to HTML attributes. You can also configure syntax highlighting by passing one or more of [these options](/functions/transform/highlight/#options).
@y
As shown above, the attribute list for fenced code blocks is not limited to HTML attributes. You can also configure syntax highlighting by passing one or more of [these options](/functions/transform/highlight/#options).
@z
